using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services.Description;

namespace WAD_Assignment_SF.account
{
    public partial class login : System.Web.UI.Page
    {
        string cs = Global.accCS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                user usr = (user)Session["user"];
                if (usr != null)
                {
                    Response.Write("<script>alert('Welcome back dear " + usr.accName + "');</script>");
                    Response.Redirect("../home.aspx");
                }
                else
                {
                    // Reset the text box
                }
            }

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/account/signup.aspx");
        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            string sql1 = "SELECT count(accEmail) FROM account WHERE accEmail=@email and accPassword=@pwd";
            string sql2 = "SELECT * FROM account" +
                " INNER JOIN customer ON account.accID = customer.cust_accID" +
                " WHERE account.accEmail=@email";
            string sql3 = "SELECT * FROM account" +
                " INNER JOIN seller ON account.accID = seller.seller_accID" +
                " WHERE account.accEmail=@email";

            // string sql2 = "SELECT * FROM account";
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            SqlCommand cmd3 = new SqlCommand(sql3, con);
            cmd1.Parameters.Add(new SqlParameter("@email", txtEmail.Text));
            cmd1.Parameters.Add(new SqlParameter("@pwd", txtPwd.Text));
            cmd2.Parameters.Add(new SqlParameter("@email", txtEmail.Text));
            cmd3.Parameters.Add(new SqlParameter("@email", txtEmail.Text));

            con.Open();
            object res = cmd1.ExecuteScalar();
            SqlDataReader dr;
            if (Convert.ToInt32(res) > 0)
            {
                user usr = new user();

                dr = cmd2.ExecuteReader();
                if (dr.Read())
                {
                    usr.type = "customer";
                    usr.email = txtEmail.Text;
                    usr.userID = Convert.ToInt32(dr["custID"]);
                    usr.accID = Convert.ToInt32(dr["accID"]);
                    usr.accName = dr["accUserName"].ToString();
                    Session["user"] = usr;
                    Response.Redirect("acc_Update.aspx");
                }
                else
                {
                    dr.Close();
                    dr = cmd3.ExecuteReader();
                    if (dr.Read())
                    {
                        usr.type = "seller";
                        usr.email = txtEmail.Text;
                        usr.userID = Convert.ToInt32(dr["sellerID"]);

                        usr.accID = Convert.ToInt32(dr["accID"]);
                        usr.accName = dr["accUserName"].ToString();
                        Session["user"] = usr;
                    }
                }
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('Wrong Email or Password');</script>");
                return;
            }
            con.Close();
        }
    }
}