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

namespace AviaCompany._1User
{
    /// <summary>
    /// Логика взаимодействия для PageMainUser.xaml
    /// </summary>
    public partial class PageMainUser : Page
    {
        public PageMainUser()
        {
            InitializeComponent();

            var vs = AppData.User.TimeSpentSum;
            var vs2 = AppData.Ent.UserActives.Count(x => x.NoLogoutReason != null & x.UserId == AppData.User.ID).ToString();

            string s1 = string.Concat("Hi ", AppData.User.FirstName, ", Welcome to AMONIC Airlines.");
            string s2 = string.Concat("Time spent on system :  ", vs);
            string s3 = string.Concat("Number of crashes : ", vs2);

            TB1.Text = s1;
            TB2.Text = s2;
            TB3.Text = s3;

            UpdateTable();

        }

        public void UpdateTable()
        {
            ActiveGrid.ItemsSource = AppData.Ent.UserActives.Where(x => x.UserId == AppData.User.ID).ToList();
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            AppData.User = null;
            new MainWindow().Show();
            AppData.WindowUser.Close();
        }
    }
}
