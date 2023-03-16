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
using WPF_SE150420_VoTuanKhanh.DataAccess;
using WPF_SE150420_VoTuanKhanh.Models;

namespace WPF_SE150420_VoTuanKhanh
{
    /// <summary>
    /// Interaction logic for Signup.xaml
    /// </summary>
    public partial class Signup : Window
    {
        AccountUserDAO dao = new AccountUserDAO();
        public Signup()
        {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
        }

        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            MainWindow loginPage = new MainWindow();
            SignupPage.Close();
            loginPage.ShowDialog();
        }

        private void Signup_Click(object sender, RoutedEventArgs e)
        {
            string userName = SignupUsername.Text;
            string fullName = SignupFullname.Text;
            string password = SignupPassword.Text;
            string confirm = SignupConfirm.Text;

            if(userName == "" || fullName == "" || password == "" || confirm == "")
            {
                PopupContent.Text = "Fields not allow empty.";
                DuplicateUsername.IsOpen = true;
            }
            else
            {
                if (dao.GetUserByUsername(userName) != null)
                {
                    PopupContent.Text = "This username was used.";
                    DuplicateUsername.IsOpen = true;
                }
                else
                {
                    if (password == confirm)
                    {
                        AccountUser signUpUser = new AccountUser(userName, password, fullName, 2);
                        dao.AddUser(signUpUser);
                        Successfully.IsOpen = true;
                    }
                    else
                    {
                        PopupContent.Text = "Confirm password must same as password.";
                        DuplicateUsername.IsOpen = true;
                    }
                }
            }
        }

        private void PopoupOK_Click(object sender, RoutedEventArgs e)
        {
            DuplicateUsername.IsOpen = false;
        }

        private void PopoupSuccess_Click(object sender, RoutedEventArgs e)
        {
            MainWindow loginPage = new MainWindow();
            Successfully.IsOpen = false;
            this.Close();
            loginPage.ShowDialog();
        }
    }
}
