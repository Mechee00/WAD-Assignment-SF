using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.ErrorPages
{
    public partial class noperm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}