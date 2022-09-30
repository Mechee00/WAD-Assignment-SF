using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Step 1: import library
using System.Data.SqlClient;

namespace WAD_Assignment_SF.promotion
{
    public partial class addPromotion : System.Web.UI.Page
    {
        //Step 2: retreive connection string from Global.asax
        string cs = Global.CS;
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

        protected void click_post(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //Step 3: sql
                string sql = @"INSERT INTO [Promotion] (promoTitle, promoDescription) VALUES (@promoTitle, @promoDescription)";

                //Step 4: establish connection
                SqlConnection con = new SqlConnection(cs);

                //Step 5: command
                SqlCommand cmd = new SqlCommand(sql, con);

                //Step 5.1: supply value to SQL parameter
                cmd.Parameters.AddWithValue("@promoTitle", promoTitle.Text);
                cmd.Parameters.AddWithValue("@promoDescription", promoDescription.Text);

                //Step 6: open connection
                con.Open();

                //Step 7: run sqlcommand
                int count = cmd.ExecuteNonQuery();

                //Step 8 : close connection
                con.Close();
                Response.Redirect("promotion.aspx");
            }
            
            
        }

        protected void click_cancel(object sender, EventArgs e)
        {
            Response.Redirect("promotion.aspx");
        }
    }
}