using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using System.Xml.Linq;

namespace WPF_Personnel
{
    /// <summary>
    /// Логика взаимодействия для new_worker.xaml
    /// </summary>
    public partial class new_worker : Window
    {
        ApplicationContext database;
        public new_worker()
        {
            InitializeComponent();

            database = new ApplicationContext();
        }

        private void save_Click(object sender, RoutedEventArgs e)
        {
            string identificator = boxidentificator.Text.Trim();
            string name = boxname.Text.Trim();
            string last_name = boxlast_name.Text.Trim();
            string patronymic = boxpatronymic.Text.Trim();
            string date_birth = boxdate_birth.Text.Trim();
            string number_phone = boxnumber_phone.Text.Trim();
            string group = boxgroup.Text.Trim();

            worker worker = new worker(identificator, name, last_name, patronymic, date_birth, number_phone, group);

            database.workers_table.Add(worker);
            database.SaveChanges();

            Hide();
        }
    }
}
