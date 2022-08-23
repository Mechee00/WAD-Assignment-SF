using System;

namespace WAD_Assignment_SF.comment
{
    public partial class comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancel_Btn(object sender, EventArgs e)
        {
            Response.Redirect("commentList.aspx");
        }

        protected void Post_Btn(object sender, EventArgs e)
        {
            Response.Redirect("commentList.aspx");
        }
    }
}