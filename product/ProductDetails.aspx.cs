using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Step 1: import library (ADO.NET) that contain class
using System.Data.SqlClient;

namespace WAD_Assignment_SF.product
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        //Step 2: retreive connection string from Global.asax file
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}