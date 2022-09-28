using System;

namespace WAD_Assignment_SF.account
{
    public partial class seller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                user usr = (user)Session["user"];
                if (usr != null)
                {
                    if (usr.type == "customer")
                    {
                        Response.Redirect("../home.aspx");
                    }
                }
            }
        }
    }
}