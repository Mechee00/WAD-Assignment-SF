using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.delivery
{
    public partial class deliverylist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            user usr = (user)Session["user"];
            if (usr != null)
            {
                if (usr.type != "seller")
                {
                    Response.Redirect("~/ErrorPages/noperm.aspx");
                }
            }
            else
            {
                Response.Redirect("~/ErrorPages/noperm.aspx");
            }
        }

        protected void returnbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void switch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/transaction/transaction.aspx");
        }
    }
}