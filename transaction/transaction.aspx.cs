using System;

namespace WAD_Assignment_SF.transaction
{
    public partial class transaction : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            user usr = (user)Session["user"];
            if (usr != null)
            {
                if (usr.type != "seller")
                {
                    Response.Redirect("~/ErrorPages/noAuth.aspx");
                }
            }            
        }

        protected void returnbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/delivery/deliverylist.aspx");
        }
    }
}