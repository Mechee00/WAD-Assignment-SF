using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.account
{
    public partial class acc_delete : System.Web.UI.Page
    {
        string cs = Global.accCS;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("acc_update.aspx");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            user usr = (user)Session["user"];
            if (usr != null)
            {
                string sql1, sql2, sql3;
                // Set Connectin String
                SqlConnection con = new SqlConnection(cs);
                // Prep Command
                sql1 = "DELETE FROM account WHERE accID=@accID";
                sql2 = "DELETE FROM address WHERE user_accID=@accID";
                sql3 = "DELETE FROM customer WHERE cust_accID=@accID";
                SqlCommand cmd1 = new SqlCommand(sql1, con);
                SqlCommand cmd2 = new SqlCommand(sql2, con);
                SqlCommand cmd3 = new SqlCommand(sql3, con);
                cmd1.Parameters.AddWithValue("@accID", usr.accID);
                cmd2.Parameters.AddWithValue("@accID", usr.accID);
                cmd3.Parameters.AddWithValue("@accID", usr.accID);
                // Execute Command
                con.Open();
                cmd2.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                con.Close();

                // Clear Session and Logout
                Session.Remove("user");
                // Refresh the page
                Response.Redirect("login.aspx");
            }
            // Read Session and casscade delete 3 tables
        }
    }
}