using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Step 1: import library
using System.Data.SqlClient;

namespace WAD_Assignment_SF.delivery
{
    public partial class ConfirmDelivery : System.Web.UI.Page
    {
        //Step 2: retreive cs from Global.asax
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Boolean found = false;
                String pending = "Pending   ";

                //mean it RUN for the FIRST TIME ONLY
                //retreive id from URL
                string deliveryid = Request.QueryString["deliveryid"] ?? "";

                //Step 3:
                string sql = @"SELECT * FROM [Delivery] WHERE deliveryId = @deliveryId";

                //Step 4: establish connection
                SqlConnection con = new SqlConnection(cs);

                //Step 5: sql command
                SqlCommand cmd = new SqlCommand(sql, con);

                //Step 5.1: supply value to sql parameter
                cmd.Parameters.AddWithValue("@deliveryId", deliveryid);

                //Step 6: open connection
                con.Open();

                //Step 7: run sql command
                SqlDataReader dr = cmd.ExecuteReader();

                //Step 8: display output
                if (dr.Read())
                {
                    found = true;
                    litId.Text = dr[0].ToString();
                    litDate.Text = dr[1].ToString();
                    litStatus.Text = dr[2].ToString();
                    litAddress.Text = (string)dr[3];
                    litType.Text = (string)dr[4];

                }

                //Step 9: close connection and dr
                dr.Close();
                con.Close();
                String status = litStatus.Text.ToString();

                if (status == pending)
                {
                    litDateEs.Text = "(Estimated)";
                }
                else
                {
                    litDateEs.Text = "";
                }

                if (!found)
                {
                    Response.Redirect("deliverylist.aspx");
                }
                else if (litStatus.Text != pending)
                {
                    Response.Redirect("deliverydetails2.aspx?deliveryid=" + deliveryid);
                }
            }
        }

        protected void returnbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("deliverylist.aspx");
        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            //mean it RUN for the FIRST TIME ONLY
            //retreive id from URL
            string deliveryid = Request.QueryString["deliveryid"] ?? "";

            //Step 3:
            string sql = @"Update [Delivery] SET deliveryStatus = @status, deliveryDateTime = @date WHERE deliveryId = @deliveryId";

            //Step 4: establish connection
            SqlConnection con = new SqlConnection(cs);

            //Step 5: sql command
            SqlCommand cmd = new SqlCommand(sql, con);

            //Step 5.1: supply value to sql parameter
            cmd.Parameters.AddWithValue("@deliveryId", deliveryid);
            cmd.Parameters.AddWithValue("@status", "Delivered");
            cmd.Parameters.AddWithValue("@date", DateTime.Now);

            //Step 6: open connection
            con.Open();

            //Step 7: run sql command
            SqlDataReader dr = cmd.ExecuteReader();

            //Step 9: close connection and dr
            dr.Close();
            con.Close();


            Response.Redirect("ConfirmDelivery.aspx?deliveryid=" + deliveryid);
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            string deliveryid = Request.QueryString["deliveryid"] ?? "";

            //Step 3:
            string sql = @"DELETE [Delivery] WHERE deliveryId = @deliveryId";

            //Step 4: establish connection
            SqlConnection con = new SqlConnection(cs);

            //Step 5: sql command
            SqlCommand cmd = new SqlCommand(sql, con);

            //Step 5.1: supply value to sql parameter
            cmd.Parameters.AddWithValue("@deliveryId", deliveryid);

            //Step 6: open connection
            con.Open();

            //Step 7: run sql command
            SqlDataReader dr = cmd.ExecuteReader();

            //Step 9: close connection and dr
            dr.Close();
            con.Close();


            Response.Redirect("deliverylist.aspx");
        }
    }
}