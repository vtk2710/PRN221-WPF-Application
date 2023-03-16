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

namespace WPF_SE150420_VoTuanKhanh
{
    /// <summary>
    /// Interaction logic for CreateBook.xaml
    /// </summary>
    public partial class CreateBook : Window
    {
        public CreateBook()
        {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
        }

        private void CancelCreateBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ConfirmCreateBtn_Click(object sender, RoutedEventArgs e)
        {
            BookDAO dao = new BookDAO();
            string bookID = BookIDTxt.Text;
            string bookTitle = BookTitleTxt.Text;
            string bookQuantity = BookQuantityTxt.Text;
            string bookAuthor = BookAuthorTxt.Text;
            string bookPublisher = BookPublisherTxt.Text;
            int check;

            if (bookID.Equals("") || bookTitle.Equals("") || bookQuantity.Equals("") || bookAuthor.Equals("") || bookPublisher.Equals(""))
            {
                PopupCreateBookContent.Text = "Fields not allowed empty.";
                CreateBookError.IsOpen = true;
            }
            else if(!int.TryParse(bookQuantity, out check))
            {
                PopupCreateBookContent.Text = "Quantity must be number.";
                CreateBookError.IsOpen = true;
            }
            else if(dao.GetBookByID(bookID) != null)
            {
                PopupCreateBookContent.Text = "This ID was used.";
                CreateBookError.IsOpen = true;
            }
            else
            {
                dao.CreateNewBook(bookID, bookTitle, Int32.Parse(bookQuantity), bookAuthor, bookPublisher);
                PopupCreateBookSuccess.Text = "Create new book success.";
                CreateBookSuccess.IsOpen = true;
            }
        }

        private void PopoupOK_Click(object sender, RoutedEventArgs e)
        {
            CreateBookError.IsOpen = false;
        }

        private void PopoupCreateOK_Click(object sender, RoutedEventArgs e)
        {
            CreateBookSuccess.IsOpen = false;
            this.Close();
        }
    }
}
