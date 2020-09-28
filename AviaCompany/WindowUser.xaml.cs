using AviaCompany._1User;
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

namespace AviaCompany
{
    /// <summary>
    /// Логика взаимодействия для WindowUser.xaml
    /// </summary>
    public partial class WindowUser : Window
    {
        public WindowUser()
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
            AppData.Frame = UserFrame;
            AppData.Frame.Navigate(new PageMainUser());
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            AppData.UserActive.TimeLogout = DateTime.Now.TimeOfDay;
            AppData.Ent.UserActives.Add(AppData.UserActive);
            AppData.Ent.SaveChanges();
        }
    }
}
