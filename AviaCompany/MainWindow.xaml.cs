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

namespace AviaCompany
{
    
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int x = 0;

        public MainWindow()
        {
            InitializeComponent();
            AppData.Ent = new AviaEntities();
           
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {



            AppData.User = AppData.Ent.Users.FirstOrDefault(x => x.Email == TbLogin.Text && x.Password == TbPass.Password);
            if (AppData.User == null)
            {
                MessageBox.Show("Incorrect username or password.");
                x += 1;
                if (x == 3)
                {
                    btnLogin.IsEnabled = false;
                    var timer = new System.Windows.Threading.DispatcherTimer();
                    timer.Interval = new TimeSpan(0, 0, 1);
                    timer.IsEnabled = true;
                    int y = 11;
                    timer.Tick += (o, i) => { y -= 1; btnLogin.Content = y; if (y == 0) { timer.Stop(); btnLogin.IsEnabled = true; btnLogin.Content = "Login"; }; };
                    timer.Start();

                }
            }
            else
            {
                if (AppData.User.Active == false) { MessageBox.Show("Your account is blocked!"); }

                else
                {


                    switch (AppData.User.RoleID)
                    {
                        case 1:
                            AppData.WindowAdmin = new WindowAdmin();
                            AppData.WindowAdmin.Show();
                            this.Close();
                            break;
                        case 2:
                            AppData.WindowUser = new WindowUser();
                            AppData.WindowUser.Show();
                            this.Close();
                            break;

                    }
                }

            }
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
