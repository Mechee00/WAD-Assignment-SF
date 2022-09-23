using System;

namespace WAD_Assignment_SF.transaction
{
    public partial class transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returnbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}