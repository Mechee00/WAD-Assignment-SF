using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
//Step 1: import library
using System.Data.SqlClient;
using System.ComponentModel.Design;

namespace WAD_Assignment_SF.transaction
{
    public partial class payment : System.Web.UI.Page
    {
        //Step 2: retreive connection string from Global.asax
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            user usr = (user)Session["user"];
            if (usr == null)
            {
                Response.Redirect("~/ErrorPages/noperm.aspx");
            }
        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            string orderid = Request.QueryString["orderid"] ?? "";
            double amount = 0.00;
            if (Page.IsValid)
            {
                string delitype = DeliveryTypeRBL.SelectedValue.ToString();
                if (delitype == "Express Delivery"){
                    amount += 0;
                } else if (delitype == "Express Delivery") {
                    amount += 3;
                } else if (delitype == "More Protection Delivery") {
                    amount += 5;
                } else if (delitype == "More Protection Express Delivery") {
                    amount += 10;
                }

                //Step 3: sql
                string sql = @"INSERT INTO [Transaction] 
                            (transDate, transAmount, transType, transStatus, orderId) VALUES (@Date, @Amount, @Type, @Status, @Id)";

                //Step 4: establish connection
                SqlConnection con = new SqlConnection(cs);

                //Step 5 sql command
                SqlCommand cmd = new SqlCommand(sql, con);
                //Step 5.1: supply value to SQL parameter
                cmd.Parameters.AddWithValue("@Date", DateTime.Now);
                cmd.Parameters.AddWithValue("@Amount", amount);
                cmd.Parameters.AddWithValue("@Type", "Online");
                cmd.Parameters.AddWithValue("@Status", "Pending");
                cmd.Parameters.AddWithValue("@Id", orderid);

                //Step 6: open connection
                con.Open();

                //Step 7: run sqlcommand
                int count = cmd.ExecuteNonQuery();

                //Step 8 : close connection
                con.Close();

                string sql1 = @"SELECT transID FROM Transaction ORDER BY transID DESC";
                SqlConnection con1 = new SqlConnection(sql1);
                SqlCommand cmd1 = new SqlCommand(sql1, con1);
                con1.Open();
                int transid = Convert.ToInt32(cmd1.ExecuteScalar().ToString()) + 1;
                con1.Close();
                string sql2 = @"UPDATE Order Set transId = @trandId WHERE orderId = @orderId";
                SqlConnection con2 = new SqlConnection(sql2);
                SqlCommand cmd2 = new SqlCommand(sql2, con2);
                cmd2.Parameters.AddWithValue("@trandId", transid);
                cmd2.Parameters.AddWithValue("@orderId", orderid);
                con1.Open();
                cmd2.ExecuteNonQuery();
                con1.Close();
                Session["deliType"] = delitype;

                Server.Transfer("~/delivery/deliveryconfirm.aspx?orderid=" + orderid);
            }
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/shopping_cart/ShoppingCart.aspx");
        }
    }
}