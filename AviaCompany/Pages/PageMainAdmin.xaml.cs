using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace AviaCompany.Admin
{
    /// <summary>
    /// Логика взаимодействия для PageMainAdmin.xaml
    /// </summary>
    public partial class PageMainAdmin : Page
    {
        ObservableCollection<string> offices = new ObservableCollection<string>(AppData.Ent.Offices.Select(x => x.Title));

        public PageMainAdmin()
        {
            
            InitializeComponent();

         
            offices.Insert(0, "All");

            UpdateTable();


            CmbOffice.ItemsSource = offices;
            CmbOffice.SelectedIndex = 0;
            

        }

        public void UpdateTable()
        {
            if (CmbOffice.SelectedIndex == 0)
                UsersGrid.ItemsSource = AppData.Ent.Users.ToList();
            else
                UsersGrid.ItemsSource = AppData.Ent.Users.Where(x => x.OfficeID == CmbOffice.SelectedIndex).ToList();
        }

        private void CmbOffice_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateTable();
        }

        

        private void BtnAddUser_Click(object sender, RoutedEventArgs e)
        {
            WindowAddUser windowAddUser = new WindowAddUser(this);
            windowAddUser.ButtonClicked += Second_ButtonClicked;
            windowAddUser.Show();
        }

        private void Second_ButtonClicked(object sender, EventArgs e)
        {
            UpdateTable();
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            AppData.User = null;
            new MainWindow().Show();
            AppData.WindowAdmin.Close();

        }

        private void BtnChangeRole_Click(object sender, RoutedEventArgs e)
        {
            User user = UsersGrid.SelectedItem as User;


            string s1 = null;
            if (user.RoleID == 1) { s1 = "Change role from Admin to User?"; }
            else if (user.RoleID == 2) { s1 = "Change role from User to Admin?"; }

            if (MessageBox.Show(s1, "Question", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.No)
            {
                //do no stuff
            }


            else
            {
                if (user.RoleID == 1) { user.RoleID = 2; }
                else if (user.RoleID == 2) { user.RoleID = 1; }
                AppData.Ent.SaveChanges();
                UpdateTable();
            }
        }

        private void BtnEnableDisableLogin_Click(object sender, RoutedEventArgs e)
        {
        

            User user = UsersGrid.SelectedItem as User;
            if (user.Active == true) user.Active = false;
            else if (user.Active == false) { user.Active = true; }
            AppData.Ent.SaveChanges();
            UpdateTable();

        }

      
    }
}
