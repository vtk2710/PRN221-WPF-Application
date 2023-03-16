using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WPF_SE150420_VoTuanKhanh.Models;

namespace WPF_SE150420_VoTuanKhanh.DataAccess
{
    public class BookDAO
    {
        public static BookDAO? instance { get; set; }
        public static readonly object instanceLock = new object();
        public BookDAO() { }
        public static BookDAO Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new BookDAO();
                    }
                    return instance;
                }
            }
        }

        public IEnumerable<Book> GetListBooks(string bookSearchText, string bookFilterContent)
        {
            var listBook = new List<Book>();
            using BookPublisherContext context = new BookPublisherContext();

            if(bookFilterContent.Equals("Title"))
            {
                listBook = context.Books.Include(b => b.Publisher)
                    .Where(b => b.BookName.ToLower().
                    Contains(bookSearchText.ToLower())).ToList();
            }
            else if (bookFilterContent.Equals("Author"))
            {
                listBook = context.Books.Include(b => b.Publisher)
                    .Where(b => b.AuthorName.ToLower().
                    Contains(bookSearchText.ToLower())).ToList();
            }
            else
            {
                listBook = context.Books.Include(b => b.Publisher)
                    .Where(b => b.Publisher.PublisherName.ToLower().
                    Contains(bookSearchText.ToLower())).ToList();
            }
            return listBook;
        }

        public void EditSelectedBook(string bookID, string title, int quantity, string author, string publisher)
        {
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                Book bookToUpdate = context.Books.Include(b => b.Publisher).FirstOrDefault(b => b.BookId == bookID);

                if (bookToUpdate != null)
                {
                    bookToUpdate.BookName = title;
                    bookToUpdate.Quantity = quantity;
                    bookToUpdate.AuthorName = author;
                    bookToUpdate.Publisher.PublisherName = publisher;
                    context.SaveChanges();
                }
                else
                {
                    throw new Exception("Book not found.");
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        public void DeleteSelectedBook(string bookID)
        {
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                Book bookToDelete = context.Books.FirstOrDefault(b => b.BookId.Equals(bookID));

                if (bookToDelete != null)
                {
                    context.Books.Remove(bookToDelete);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        public Book GetBookByID(string bookID)
        {
            Book bookFound = null;
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                bookFound = context.Books.FirstOrDefault(b => b.BookId.Equals(bookID));
            }
            catch(Exception e)
            {
                throw new Exception(e.Message);
            }
            return bookFound;
        }

        public void CreateNewBook(string bookID, string title, int quantity, string author, string publisher)
        {
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                Book newBook = new Book
                {
                    BookId = bookID,
                    BookName = title,
                    Quantity = quantity,
                    AuthorName = author,
                    Publisher = new Publisher {
                        PublisherId = "PU005",
                        PublisherName = publisher 
                    }
                };
                context.Books.Add(newBook);
                context.SaveChanges();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}