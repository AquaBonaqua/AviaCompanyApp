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

namespace AviaCompany.Admin
{
    /// <summary>
    /// Логика взаимодействия для WindowAddUser.xaml
    /// </summary>
    public partial class WindowAddUser : Window
    {

        PageMainAdmin page;
        public WindowAddUser(PageMainAdmin page)
        {
            InitializeComponent();
            CmbOffice.ItemsSource = AppData.Ent.Offices.ToList();
            CmbOffice.SelectedValuePath = "ID";
            CmbOffice.DisplayMemberPath = "Title";
            this.page = page;
        }

        public event EventHandler ButtonClicked;

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(EmailBox.Text) || string.IsNullOrEmpty(PassBox.Password) || string.IsNullOrEmpty(NameBox.Text) || string.IsNullOrEmpty(LastNameBox.Text) || CmbOffice.SelectedIndex == -1 || BirthDate.SelectedDate == null)
            {
                MessageBox.Show("Fill all!");
            }

            else
            {


            if (MessageBox.Show("Are you sure?", "Question", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.No)
            {
                //do no stuff
            }
           
            
            else
            {
                    User user = new User
                    {
                        RoleID = 2,
                        Email = EmailBox.Text,
                        Password = PassBox.Password,
                        FirstName = NameBox.Text,
                        LastName = LastNameBox.Text,
                        OfficeID = (int)CmbOffice.SelectedValue,
                        Birthdate = BirthDate.SelectedDate,
                        Active = true,
                    };

                    AppData.Ent.Users.Add(user);
                    AppData.Ent.SaveChanges();
                    MessageBox.Show("Saved!");

                    if (ButtonClicked != null)
                    {
                        ButtonClicked(this, EventArgs.Empty);
                    }

                    this.Close();
                   
            }
               
            }



            if (ButtonClicked != null)
            {
                ButtonClicked(this, EventArgs.Empty);
            }


        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            AppData.Frame.Refresh();
        }
    }
}
