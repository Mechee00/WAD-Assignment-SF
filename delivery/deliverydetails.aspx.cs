using System;

namespace WAD_Assignment_SF.delivery
{
    public partial class deliverydetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("delivery.aspx");
        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/transaction/payment.aspx");
        }
    }
}