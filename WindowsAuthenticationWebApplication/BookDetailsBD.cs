using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace WindowsAuthenticationWebApplication
{
    [DataObject(true)]

    public class BookDetailsBD
    {
        public static List<WindowsAuthenticationWebApplication.BookDetail> Select()
        {
            LibraryManagementBDEntities1 lmv = new LibraryManagementBDEntities1();
            return lmv.BookDetails.ToList();

        }

       

    }
}