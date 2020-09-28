
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
using AviaCompany.Admin;

namespace AviaCompany
{
    /// <summary>
    /// Логика взаимодействия для WindowAdmin.xaml
    /// </summary>
    public partial class WindowAdmin : Window
    {
        public WindowAdmin()
        {
            InitializeComponent();
            AppData.Ent = new AviaEntities();
            UserActive userActive = new UserActive()
            {
                UserId = AppData.User.ID,
                Date = DateTime.Now.Date,
                TimeLogin = DateTime.Now.TimeOfDay,
            };
           
            AppData.UserActive = userActive;
            AppData.Frame = AdminFrame;
            AppData.Frame.Navigate(new PageMainAdmin());
        }


        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            
            
            AppData.UserActive.TimeLogout = DateTime.Now.TimeOfDay;
            AppData.Ent.UserActives.Add(AppData.UserActive);
            AppData.Ent.SaveChanges();
        }
    }
}
