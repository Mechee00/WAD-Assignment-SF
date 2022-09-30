using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Step 1: import library
using System.Data.SqlClient;
using System.Xml.Linq;

namespace WAD_Assignment_SF.transaction
{
    public partial class transactiondetails : System.Web.UI.Page
    {
        //Step 2: retreive cs from Global.asax
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            //page level event
            //load automatically
            if (!Page.IsPostBack)
            {
                Boolean found = false;

                //mean it RUN for the FIRST TIME ONLY
                //retreive id from URL
                string transid = Request.QueryString["transid"] ?? "";

                //Step 3:
                string sql = @"SELECT * FROM [Transaction] WHERE transId = @transId";

                //Step 4: establish connection
                SqlConnection con = new SqlConnection(cs);

                //Step 5: sql command
                SqlCommand cmd = new SqlCommand(sql, con);

                //Step 5.1: supply value to sql parameter
                cmd.Parameters.AddWithValue("@transId", transid);

                //Step 6: open connection
                con.Open();

                //Step 7: run sql command
                SqlDataReader dr = cmd.ExecuteReader();

                //Step 8: display output
                if (dr.Read())
                {
                    found = true;
                    litID.Text = dr[0].ToString();
                    litDate.Text = dr[1].ToString();
                    litAmt.Text = String.Format("{0:0.00}",dr[2]);
                    litPayment.Text = (string)dr[3];
                    litStatus.Text = (string)dr[4];
                    litOrder.Text = dr[5].ToString();

                }

                //Step 9: close connection and dr
                dr.Close();
                con.Close();

                if (!found)
                {
                    Response.Redirect("transaction.aspx");
                } else if (litStatus.Text != "Pending   ") {
                    Response.Redirect("transactiondetails2.aspx?transid=" + transid);
                }
            }
        }

        protected void returnbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("transaction.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //mean it RUN for the FIRST TIME ONLY
            //retreive id from URL
            string transid = Request.QueryString["transid"] ?? "";

            //Step 3:
            string sql = @"Delete [Transaction] WHERE transId = @transId";

            //Step 4: establish connection
            SqlConnection con = new SqlConnection(cs);

            //Step 5: sql command
            SqlCommand cmd = new SqlCommand(sql, con);

            //Step 5.1: supply value to sql parameter
            cmd.Parameters.AddWithValue("@transId", transid);

            //Step 6: open connection
            con.Open();

            //Step 7: run sql command
            SqlDataReader dr = cmd.ExecuteReader();

            //Step 8: close connection and dr
            dr.Close();
            con.Close();


            Response.Redirect("transaction.aspx");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //retreive id from URL
            string transid = Request.QueryString["transid"] ?? "";

            //Step 3:
            string sql = @"Update [Transaction] SET transStatus = @status WHERE transId = @transId";

            //Step 4: establish connection
            SqlConnection con = new SqlConnection(cs);

            //Step 5: sql command
            SqlCommand cmd = new SqlCommand(sql, con);

            //Step 5.1: supply value to sql parameter
            cmd.Parameters.AddWithValue("@transId", transid);
            cmd.Parameters.AddWithValue("@status", "Success");

            //Step 6: open connection
            con.Open();

            //Step 7: run sql command
            SqlDataReader dr = cmd.ExecuteReader();

            //Step 9: close connection and dr
            dr.Close();
            con.Close();


            Server.Transfer("transactiondetails.aspx?transid=" + transid);
        }

        protected void btnFail_Click(object sender, EventArgs e)
        {
            //retreive id from URL
            string transid = Request.QueryString["transid"] ?? "";

            //Step 3:
            string sql = @"Update [Transaction] SET transStatus = @status WHERE transId = @transId";

            //Step 4: establish connection
            SqlConnection con = new SqlConnection(cs);

            //Step 5: sql command
            SqlCommand cmd = new SqlCommand(sql, con);

            //Step 5.1: supply value to sql parameter
            cmd.Parameters.AddWithValue("@transId", transid);
            cmd.Parameters.AddWithValue("@status", "Failed");

            //Step 6: open connection
            con.Open();

            //Step 7: run sql command
            SqlDataReader dr = cmd.ExecuteReader();

            //Step 9: close connection and dr
            dr.Close();
            con.Close();


            Server.Transfer("transactiondetails.aspx?transid=" + transid);
        }
    }
}