using System;

namespace WAD_Assignment_SF
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPromotion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/promotion/promotion.aspx");
        }
    }
}