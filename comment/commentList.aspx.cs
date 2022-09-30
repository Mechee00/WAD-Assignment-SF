using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.Comment
{
    public partial class commentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Comment_Btn(object sender, EventArgs e)
        {
            Response.Redirect("~/comment/comment.aspx");
        }

        protected void Return_Btn(object sender, EventArgs e)
        {
            Response.Redirect("~/product/ProductDetails.aspx");
        }
    }
}