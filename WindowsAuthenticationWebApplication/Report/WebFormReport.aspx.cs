using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WindowsAuthenticationWebApplication.Report
{
    public partial class WebFormReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int bookId = Convert.ToInt32(Request.QueryString["BooksDetails"].ToString());



            DataSet ds = getData(bookId);
            //ds.WriteXml(@"C:\Users\Administrator\Desktop\Sharmin Akter-1252366\WindowsAuthenticationWebApplication\WindowsAuthenticationWebApplication\Report\BooksInformationwithStudentInformation.xsd", XmlWriteMode.WriteSchema);
            

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("~/Report/CrystalReportBooks.rpt"));
            rd.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rd;

        }


        public DataSet getData(int bookId)
        {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter())
                {

                    string sql = @"SELECT BookID, BookTitle, AuthorName, ImageFile, FacultyName, StudentName, Address, ContactNo
                    FROM Books JOIN Faculty ON Books.FacultyID = Faculty.FacultyID JOIN Students on Faculty.FacultyID = Students.FacultyID
                    where Books.BookID = @BookID";
                    da.SelectCommand = new SqlCommand(sql, conn);
                    da.SelectCommand.CommandType = CommandType.Text;

                    da.SelectCommand.Parameters.Add("@BookID", SqlDbType.Int).Value = bookId;

                    DataSet ds = new DataSet();
                    da.Fill(ds, "BooksInformationwithStudentInformation");

                    return ds;

                }
            }
        }

    }
}