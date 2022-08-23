using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.transaction
{
    public partial class transactiondetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returnbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("transaction.aspx");
        }
    }
}