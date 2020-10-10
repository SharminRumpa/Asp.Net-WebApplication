using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace WindowsAuthenticationWebApplication
{
    [DataObject(true)]

    public static class BookBD
    {
        public static List<WindowsAuthenticationWebApplication.Book> Select()
        {
            LibraryManagementBDEntities lms = new LibraryManagementBDEntities();
            return lms.Books.ToList();

        }

        public static void Insert(WindowsAuthenticationWebApplication.Book book)
        {
            LibraryManagementBDEntities lms = new LibraryManagementBDEntities();

            string fileNameToInsert = HttpContext.Current.Session["ImagePath"].ToString();
            if (fileNameToInsert != string.Empty)
            {
                book.ImageFile = fileNameToInsert;
                lms.Books.Add(book);
                lms.SaveChanges();

            }

        }


        public static void Update(WindowsAuthenticationWebApplication.Book book)
        {
            LibraryManagementBDEntities lms = new LibraryManagementBDEntities();

            string fileNameToUpdate = HttpContext.Current.Session["ImagePath"].ToString();
            if (fileNameToUpdate != string.Empty)
            {
                var upd = lms.Books.Where(b => b.BookID == book.BookID).FirstOrDefault();

                upd.BookTitle = book.BookTitle;
                upd.AuthorName = book.AuthorName;
                upd.FacultyID = book.FacultyID;
                book.ImageFile = fileNameToUpdate;
                lms.Books.Add(book);
                lms.SaveChanges();

            }

        }


        public static void Delect(WindowsAuthenticationWebApplication.Book book)
        {
            LibraryManagementBDEntities lms = new LibraryManagementBDEntities();

          
            var deleteupd = lms.Books.Where(b => b.BookID == book.BookID).FirstOrDefault();

            lms.Books.Remove(deleteupd);
            lms.SaveChanges();

            
            

        }


    }
}