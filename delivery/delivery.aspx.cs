using System;

namespace WAD_Assignment_SF.delivery
{
    public partial class delivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("deliverydetails.aspx");
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/shopping cart/ShoppingCart.aspx");
        }
    }
}