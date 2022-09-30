using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//import library
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace WAD_Assignment_SF.sell_product
{
    public partial class SellProduct : System.Web.UI.Page
    {
        //retreive connection string from Global.asax file
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //establish connection
                SqlConnection con = new SqlConnection(cs);

                //open connection
                con.Open();

                //product
                string checkProduct = "SELECT count(*) FROM Product";

                //sql command
                SqlCommand cmd = new SqlCommand(checkProduct, con);

                //run sql command
                //NOTE: executeReader() - when multiple fields/records returned
                //executeScalar() - when only ONE (1) value returned
                //executeNonQuery() - when we perform CUD
                int totalProduct = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                //assign the total product into the label
                lblTotalProduct.Text = "Total Item : " + totalProduct.ToString();

                //close connection
                con.Close();
            }
        }

        protected void btnInsertProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sell_product/InsertProduct.aspx");
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}