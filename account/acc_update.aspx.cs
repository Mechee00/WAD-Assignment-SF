using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.account
{
    public partial class acc_update : System.Web.UI.Page
    {
        string cs = Global.accCS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                user usr = (user)Session["user"];
                if (usr != null)
                {
                    string sql1, sql2;

                    SqlConnection con = new SqlConnection(cs);
                    sql1 = "SELECT * FROM account INNER JOIN customer ON account.accID = customer.cust_accID WHERE accEmail=@email";
                    sql2 = "SELECT * FROM account INNER JOIN address ON account.accID = address.user_accID WHERE accEmail=@email";

                    SqlCommand cmd1 = new SqlCommand(sql1, con);
                    SqlCommand cmd2 = new SqlCommand(sql2, con);
                    cmd1.Parameters.AddWithValue("@email", usr.email);
                    cmd2.Parameters.AddWithValue("@email", usr.email);
                    con.Open();
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.Read())
                    {
                        txtFullName.Text = dr["custName"].ToString();
                        txtUserName.Text = dr["accUserName"].ToString();
                        txtContact.Text = dr["contactNumber"].ToString();
                        txtEmail.Text = dr["accEmail"].ToString();
                        txtPwd.Text = dr["accPassword"].ToString();
                        txtCfmPwd.Text = "";
                        radBtnGender.SelectedValue = dr["custGender"].ToString();

                        DateTime oDate = Convert.ToDateTime(dr["custDOB"].ToString());
                        txtDoB.Text = oDate.ToString("yyyy-MM-dd");
                    }
                    dr.Close();

                    dr = cmd2.ExecuteReader();
                    if (dr.Read())
                    {
                        txtUnit.Text = dr["addrUnitNumber"].ToString();
                        txtBuilding.Text = dr["addrBuildingName"].ToString();
                        txtStreet.Text = dr["addrStreet"].ToString();
                        txtPostcode.Text = dr["addrPostCode"].ToString();
                        droplstState.SelectedValue = dr["addrState"].ToString();

                    }
                    dr.Close();
                    con.Close();
                }
                else
                {
                    Response.Redirect("login.aspx");
                    Response.Write("<script>alert('Please Login First');</script>");
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                user usr = (user)Session["user"];
                if (usr != null)
                {
                    string sql1, sql2, sql3;
                    SqlConnection con = new SqlConnection(cs);
                    sql1 = "UPDATE account SET accUserName=@accUserName, accEmail=@accEmail,accPassword=@accPassword, contactNumber=@contactNumber WHERE accID=@accID";
                    sql2 = "UPDATE customer SET custName=@custname, custGender=@custGender, custDOB=@custDOB WHERE cust_accID=@accID";
                    sql3 = "UPDATE address SET addrUnitNumber=@addrUnitNumber, addrBuildingName=@addrBuildingName, addrStreet=@addrStreet, addrPostCode=@addrPostCode, addrState=@addrState WHERE user_accID=@accID";

                    SqlCommand cmd1 = new SqlCommand(sql1, con);
                    SqlCommand cmd2 = new SqlCommand(sql2, con);
                    SqlCommand cmd3 = new SqlCommand(sql3, con);
                    cmd1.Parameters.AddWithValue("@accUserName", txtUserName.Text);
                    cmd1.Parameters.AddWithValue("@accEmail", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@accPassword", txtPwd.Text);
                    cmd1.Parameters.AddWithValue("@contactNumber", txtContact.Text);
                    cmd1.Parameters.AddWithValue("@accID", usr.accID);
                    cmd2.Parameters.AddWithValue("@custname", txtFullName.Text);
                    cmd2.Parameters.AddWithValue("@custGender", radBtnGender.SelectedValue);
                    cmd2.Parameters.AddWithValue("@custDOB", txtDoB.Text);
                    cmd2.Parameters.AddWithValue("@accID", usr.accID);
                    cmd3.Parameters.AddWithValue("@addrUnitNumber", txtUnit.Text);
                    cmd3.Parameters.AddWithValue("@addrBuildingName", txtBuilding.Text);
                    cmd3.Parameters.AddWithValue("@addrStreet", txtStreet.Text);
                    cmd3.Parameters.AddWithValue("@addrPostCode", txtPostcode.Text);
                    cmd3.Parameters.AddWithValue("@addrState", droplstState.SelectedValue);
                    cmd3.Parameters.AddWithValue("@accID", usr.accID);

                    con.Open();
                    cmd1.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    cmd3.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void btnDiscard_Click(object sender, EventArgs e)
        {
            Response.Redirect("acc_update.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("login.aspx");
        }
    }
}