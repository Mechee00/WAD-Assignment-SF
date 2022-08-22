using System;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.account
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            // Page.Response.Redirect(Page.Request.Url.ToString(), true);
            // Response.Redirect("~/account/signup.aspx");
            Server.Transfer("~/account/signup.aspx");
        }
    }
}