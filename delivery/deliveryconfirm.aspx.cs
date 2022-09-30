using System;
//Step 1: import library
using System.Data.SqlClient;
using System.Drawing;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.delivery
{
    public partial class deliverydetails : System.Web.UI.Page
    {
        //Step 2: retreive connection string from Global.asax
        string cs = Global.CS;
        string accCs = Global.accCS;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                user usr = (user) Session["user"];
                if (usr != null)
                {
                    litName.Text = usr.accName;
                    string adr = @"SELECT * from [address] where user_accId = @accId";
                    SqlConnection acccon = new SqlConnection(accCs);
                    SqlCommand acccmd = new SqlCommand(adr, acccon);
                    acccmd.Parameters.AddWithValue("@accId",usr.accID);
                    acccon.Open();
                    SqlDataReader accdr = acccmd.ExecuteReader();
                    litAddress.Text = String.Format((string)accdr[1] + " " + (string)accdr[2] + ", " + (string)accdr[3] + ", " + (string)accdr[4] + ", " + (string)accdr[5]);
                    acccon.Close();
                }
                HttpCookie add = Request.Cookies["Address"];
                if (add != null) //cookie object found
                {
                    string Address = string.Format(add.Value);
                    litAddress.Text = Address;
                }
                string type = (string)Session["deliType"];
                if (type != null)//session found
                {
                    litType.Text = type.ToString();
                }

            }
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            Session.Remove("deliType");
            Response.Redirect("~/home.aspx");
        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            string orderid = Request.QueryString["orderid"] ?? "";
            //Step 3: sql
            string sql = @"INSERT INTO [Delivery] (deliveryDateTime, deliveryStatus, deliveryAddress, deliveryType, orderId) VALUES (@Date, @Status, @Address, @Type, @Id)";
            

            //Step 4: establish connection
            SqlConnection con = new SqlConnection(cs);

            //Step 5 sql command
            SqlCommand cmd = new SqlCommand(sql, con);
            //Step 5.1: supply value to SQL parameter
            cmd.Parameters.AddWithValue("@Date", DateTime.Now.AddMinutes(15));
            cmd.Parameters.AddWithValue("@Status", "Pending");
            cmd.Parameters.AddWithValue("@Address", litAddress.Text);
            cmd.Parameters.AddWithValue("@Type", litType.Text);
            cmd.Parameters.AddWithValue("@Id", orderid);

            //Step 6: open connection
            con.Open();

            //Step 7: run sqlcommand
            int count = cmd.ExecuteNonQuery();

            //Step 8 : close connection
            con.Close();

            string sql1 = @"SELECT deliveryID FROM Transaction ORDER BY deliveryID DESC";
            SqlConnection con1 = new SqlConnection(sql1);
            SqlCommand cmd1 = new SqlCommand(sql1, con1);
            con1.Open();
            int deliveryid = Convert.ToInt32(cmd1.ExecuteScalar().ToString()) + 1;
            con1.Close();
            string sql2 = @"UPDATE Order Set deliveryId = @deliveryId WHERE orderId = @orderId";
            SqlConnection con2 = new SqlConnection(sql2);
            SqlCommand cmd2 = new SqlCommand(sql2, con2);
            cmd2.Parameters.AddWithValue("@deliveryId", deliveryid);
            cmd2.Parameters.AddWithValue("@orderId", orderid);
            con1.Open();
            cmd2.ExecuteNonQuery();
            con1.Close();

            Session.Remove("deliType");
            Response.Redirect("~/comment/comment.aspx?orderid=" + orderid);
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string orderid = Request.QueryString["orderid"] ?? "";
            Response.Redirect("delivery.aspx?orderid=" + orderid);
        }
    }
}