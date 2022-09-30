using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Step 1: import library
using System.Data.SqlClient;

namespace WAD_Assignment_SF.comment
{
    public partial class comment : System.Web.UI.Page
    {
        //Step 2: retreive connection string from Global.asax
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Cancel_Btn(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void Post_Btn(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int userid = 0;
                user usr = (user)Session["user"];
                if (usr != null)
                {
                    userid = usr.userID;
                }
                
                string productID = Request.QueryString["productID"] ?? "";
                //Step 3: sql
                string sql = @"INSERT INTO [Rating] (productID, ratingScore, ratingComment, custID) VALUES (@productID, @ratingScore, @ratingComment, @custid)";

                //Step 4: establish connection
                SqlConnection con = new SqlConnection(cs);

                //Step 5: command
                SqlCommand cmd = new SqlCommand(sql, con);

                //Step 5.1: supply value to SQL parameter
                cmd.Parameters.AddWithValue("@productID", productID);
                cmd.Parameters.AddWithValue("@ratingScore", int.Parse(Rating1.SelectedValue));
                cmd.Parameters.AddWithValue("@ratingComment", textComment.Text);
                cmd.Parameters.AddWithValue("@custid", userid);
                

                //Step 6: open connection
                con.Open();

                //Step 7: run sqlcommand
                int count = cmd.ExecuteNonQuery();

                //Step 8 : close connection
                con.Close();

                Server.Transfer("commentList.aspx");
            }

        }
    }
}