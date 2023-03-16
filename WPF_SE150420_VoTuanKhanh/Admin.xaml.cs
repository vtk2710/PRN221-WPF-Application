using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
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
    /// Interaction logic for Admin.xaml
    /// </summary>
    public partial class Admin : Window
    {
        AccountUserDAO dao = new AccountUserDAO();
        BookDAO bdao = new BookDAO();
        List<AccountUser> userList;
        List<Book> bookList;
        
        public Admin()
        {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            userList = (List<AccountUser>)dao.GetListUsers("");
            if(userList.Count > 0 )
            {
                UserDataGrid.ItemsSource = userList;
            }
            bookList = (List<Book>)bdao.GetListBooks("", "Title");
            if(bookList.Count > 0 )
            {
                BookDataGrid.ItemsSource = bookList;
            }
        }

        private void SearchUserBtn_Click(object sender, RoutedEventArgs e)
        {
            string nameSearch = UserNameSearch.Text.ToString();
            userList = (List<AccountUser>)dao.GetListUsers(nameSearch);
            UserDataGrid.ItemsSource = userList;
        }

        private void DeleteUserBtn_Click(object sender, RoutedEventArgs e)
        {
            AccountUser selectedUser = (AccountUser)UserDataGrid.SelectedItem;
            if(selectedUser.UserRole != 1)
            {
                dao.DeleteUser(selectedUser);
                userList = (List<AccountUser>)dao.GetListUsers("");
                UserDataGrid.ItemsSource = userList;
            }
        }

        private void SearchBookBtn_Click(object sender, RoutedEventArgs e)
        {
            string bookSearchText = BookSearchTxt.Text.ToString();
            ComboBoxItem selectedItem = ComboBoxBook.SelectedItem as ComboBoxItem;
            string cbxFilterText = selectedItem.Content.ToString();
            bookList = (List<Book>)bdao.GetListBooks(bookSearchText, cbxFilterText);
            if(bookList.Count > 0)
            {
                BookDataGrid.ItemsSource = bookList;
            }
        }

        private void DeleteBookBtn_Click(object sender, RoutedEventArgs e)
        {
            Book selectedBook = (Book)BookDataGrid.SelectedItem;
            string selectedBookID = selectedBook.BookId;
            bdao.DeleteSelectedBook(selectedBookID);
            bookList = (List<Book>)bdao.GetListBooks("", "Title");
            BookDataGrid.ItemsSource = bookList;
        }

        private void UpdateBookBtn_Click(object sender, RoutedEventArgs e)
        {
            Book selectedBook = (Book)BookDataGrid.SelectedItem;
            EditBook edit = new EditBook(selectedBook);
            edit.Show();
        }

        private void CreateBookBtn_Click(object sender, RoutedEventArgs e)
        {
            CreateBook create = new CreateBook();
            create.Show();
        }
    }
}
