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
    /// Interaction logic for EditBook.xaml
    /// </summary>
    public partial class EditBook : Window
    {
        public EditBook(Book selectedBook)
        {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            BookIDTxt.Text = selectedBook.BookId;
            BookTitleTxt.Text = selectedBook.BookName;
            BookQuantityTxt.Text = selectedBook.Quantity.ToString();
            BookAuthorTxt.Text = selectedBook.AuthorName;
            BookPublisherTxt.Text = selectedBook.Publisher.PublisherName;
        }

        private void CancelEditBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ConfirmUpdateBtn_Click(object sender, RoutedEventArgs e)
        {
            BookDAO dao = new BookDAO();
            string bookID = BookIDTxt.Text;
            string bookTitle = BookTitleTxt.Text;
            string bookQuantity = BookQuantityTxt.Text;
            string bookAuthor = BookAuthorTxt.Text;
            string bookPublisher = BookPublisherTxt.Text;
            int check;

            if (bookTitle.Equals("") || bookQuantity.Equals("") || bookAuthor.Equals("") || bookPublisher.Equals(""))
            {
                PopupEditBookContent.Text = "Fields not allowed empty.";
                EditBookError.IsOpen = true;
            }
            else if(!int.TryParse(bookQuantity, out check))
            {
                PopupEditBookContent.Text = "Quantity must be number.";
                EditBookError.IsOpen = true;
            }
            else
            {
                dao.EditSelectedBook(bookID, bookTitle, Int32.Parse(bookQuantity), bookAuthor, bookPublisher);
                PopupEditBookSuccess.Text = "Book select edit success.";
                EditBookSuccess.IsOpen = true;
            }
        }

        private void PopoupEditOK_Click(object sender, RoutedEventArgs e)
        {
            EditBookSuccess.IsOpen = false;
            this.Close();
        }

        private void PopoupOK_Click(object sender, RoutedEventArgs e)
        {
            EditBookError.IsOpen = false;
        }
    }
}
