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
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WPF_SE150420_VoTuanKhanh.DataAccess;
using WPF_SE150420_VoTuanKhanh.Models;

namespace WPF_SE150420_VoTuanKhanh
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        AccountUserDAO dao = new AccountUserDAO();
        public MainWindow()
        {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void UsernameInput_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {
            string username = UsernameInput.Text;
            string password = PasswordInput.Text;
            AccountUser user = dao.CheckUserLogin(username, password);
            if(user == null)
            {
                PopupLoginError.Text = "Username or password incorrect.";
                LoginError.IsOpen = true;
            }
            else
            {
                if(user.UserRole == 1)
                {
                    Admin adminPage = new Admin();
                    this.Close();
                    adminPage.ShowDialog();
                }
                else
                {
                    User userPage = new User(user.UserFullName);
                    this.Close();
                    userPage.Show();
                }
            }
        }

        private void Signup_Click(object sender, RoutedEventArgs e)
        {
            Signup signupPage = new Signup();
            this.Close();
            signupPage.ShowDialog();
        }

        private void PopoupOK_Click(object sender, RoutedEventArgs e)
        {
            LoginError.IsOpen = false;
        }
    }
}
