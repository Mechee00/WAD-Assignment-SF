using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.account
{
    public partial class acc_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                user usr = (user)Session["user"];
                if (usr != null)
                {
                    txtUserName.Text = usr.accName;

                }
            }
        }
    }
}