using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.promotion
{
    public partial class promotion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            user usr = (user)Session["user"];
            if (usr == null)
            {
                Response.Redirect("~/ErrorPages/noperm.aspx");
            }
        }

        protected void click_addPromotion(object sender, EventArgs e)
        {
            Response.Redirect("addPromotion.aspx");
        }

        protected void click_return(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}