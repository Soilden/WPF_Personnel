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
using System.Windows.Navigation;
using System.Windows.Shapes;

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
    }
}
