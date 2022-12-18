using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Newtonsoft.Json;
using OfficeOpenXml.Style;
using OfficeOpenXml;

namespace WPF_Personnel
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            List<worker> Worker_List = new List<worker>();
            using (var database = new ApplicationContext())
            {
                var query = from i in database.workers_table select i;
                foreach (var item in query)
                {
                    Worker_List.Add(item);
                }
            }
            staff_department.ItemsSource = Worker_List;
        }

        private void add_Click(object sender, RoutedEventArgs e)
        {
            new_worker new_worker = new new_worker();
            new_worker.Show();
        }

        private void refresh_Click(object sender, RoutedEventArgs e)
        {
            List<worker> Worker_List = new List<worker>();
            using (var database = new ApplicationContext())
            {
                var query = from i in database.workers_table select i;
                foreach (var item in query)
                {
                    Worker_List.Add(item);
                }
            }
            staff_department.ItemsSource = Worker_List;
        }

        private void excel_Click(object sender, RoutedEventArgs e)
        {
            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
            using (ExcelPackage excel = new ExcelPackage())
            {
                ExcelWorksheet sheet = excel.Workbook.Worksheets.Add("Сотрудники");
                
                sheet.Cells[1,1].Value = "ID"; ;
                sheet.Cells[1,2].Value = "Идентификатор работника";
                sheet.Cells[1,3].Value = "Имя";
                sheet.Cells[1,4].Value = "Фамилия";
                sheet.Cells[1,5].Value = "Отчество";
                sheet.Cells[1,6].Value = "Дата рождения";
                sheet.Cells[1,7].Value = "Номер телефона";
                sheet.Cells[1,8].Value = "Отдел";
                
                List<worker> Worker_List = new List<worker>();
                using (var database = new ApplicationContext())
                {
                    var query = from i in database.workers_table select i;
                    foreach (var item in query)
                    {
                        Worker_List.Add(item);
                    }
                }
                sheet.Cells[2,1].LoadFromCollection(Worker_List);
                
                string path = "Reports";

                if (Directory.Exists(path) == false)
                {
                    Directory.CreateDirectory(path);
                }

                string file = "Report.xlsx";
                path = System.IO.Path.Combine(path, file);

                excel.SaveAs(path);
            }
        }

        private void json_Click(object sender, RoutedEventArgs e)
        {
            List<worker> Worker_List = new List<worker>();
            using (var database = new ApplicationContext())
            {
                var query = from i in database.workers_table select i;
                foreach (var item in query)
                {
                    Worker_List.Add(item);
                }
            }
            staff_department.ItemsSource = Worker_List;

            var json = JsonConvert.SerializeObject(Worker_List);

            string path = "Reports";

            if (Directory.Exists(path) == false)
            {
                Directory.CreateDirectory(path);
            }

            string file = "Report.json";
            path = System.IO.Path.Combine(path, file);

            File.WriteAllText(path, json.ToString());
        }

        List<worker> filter = new List<worker>();
        private void boxsearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            filter.Clear();

            List<worker> Worker_List = new List<worker>();
            using (var database = new ApplicationContext())
            {
                var query = from i in database.workers_table select i;
                foreach (var item in query)
                {
                    if (item.identificator.Contains(boxsearch.Text) ||
                        item.name.Contains(boxsearch.Text) ||
                        item.last_name.Contains(boxsearch.Text) ||
                        item.patronymic.Contains(boxsearch.Text) ||
                        item.date_birth.Contains(boxsearch.Text) ||
                        item.number_phone.Contains(boxsearch.Text) ||
                        item.group.Contains(boxsearch.Text))
                    {
                        Worker_List.Add(item);
                    }
                }
            }
            staff_department.ItemsSource = Worker_List;
        }
    }
}
