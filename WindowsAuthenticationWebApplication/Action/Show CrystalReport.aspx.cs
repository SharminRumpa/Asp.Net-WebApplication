using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WindowsAuthenticationWebApplication.Action
{
    public partial class Show_CrystalReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Report/WebFormReport.aspx?BooksDetails=" + DropDownList4.SelectedValue.ToString());
        }
    }
    
}