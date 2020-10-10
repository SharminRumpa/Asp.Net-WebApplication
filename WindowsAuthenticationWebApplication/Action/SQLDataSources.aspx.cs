using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WindowsAuthenticationWebApplication
{
    public partial class SQLDataSources : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            try
            {

                var fileUpload = (FileUpload)DetailsView1.FindControl("FileUpload2");
                string fileToSave = String.Empty;

                if (fileUpload.HasFile == true)
                {
                    fileToSave = Server.MapPath("~/Image/" + fileUpload.FileName);
                    fileUpload.SaveAs(fileToSave);
                }
                else
                {
                    return;
                }


                SqlDataSource4.InsertParameters["ImageFile"].DefaultValue = "~/Image/" + fileUpload.FileName;
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }


        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            DropDownList1.DataBind();

        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            try
            {

                var fileUpload = (FileUpload)DetailsView1.FindControl("FileUpload1");
                string fileToSave = String.Empty;

                if (fileUpload.HasFile == true)
                {
                    fileToSave = Server.MapPath("~/Image/" + fileUpload.FileName);
                    fileUpload.SaveAs(fileToSave);
                }
                else
                {
                    return;
                }
                SqlDataSource4.UpdateParameters["ImageFile"].DefaultValue = "~/Image/" + fileUpload.FileName;



            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            DropDownList1.DataBind();
        }



        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            DropDownList1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}