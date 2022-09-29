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
                profile_field.rvldtDoB.MinimumValue = DateTime.Today.AddYears(-60).ToShortDateString();
                profile_field.rvldtDoB.MaximumValue = DateTime.Today.ToShortDateString();
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
                        profile_field.txtFullName.Text = dr["custName"].ToString();
                        profile_field.txtUserName.Text = dr["accUserName"].ToString();
                        profile_field.txtContact.Text = dr["contactNumber"].ToString();
                        profile_field.txtEmail.Text = dr["accEmail"].ToString();
                        profile_field.txtPwd.Text = dr["accPassword"].ToString();
                        profile_field.txtCfmPwd.Text = "";
                        profile_field.radBtnGender.SelectedValue = dr["custGender"].ToString();
                        DateTime oDate = Convert.ToDateTime(dr["custDOB"].ToString());
                        profile_field.txtDoB.Text = oDate.ToString("yyyy-MM-dd");
                    }

                    dr.Close();
                    dr = cmd2.ExecuteReader();
                    if (dr.Read())
                    {
                        profile_field.txtUnit.Text = dr["addrUnitNumber"].ToString();
                        profile_field.txtBuilding.Text = dr["addrBuildingName"].ToString();
                        profile_field.txtStreet.Text = dr["addrStreet"].ToString();
                        profile_field.txtPostcode.Text = dr["addrPostCode"].ToString();
                        profile_field.droplstState.SelectedValue = dr["addrState"].ToString();
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
                    // Set Connectin String
                    SqlConnection con = new SqlConnection(cs);
                    // Prep Command
                    sql1 = "UPDATE account SET accUserName=@accUserName, accEmail=@accEmail,accPassword=@accPassword, contactNumber=@contactNumber WHERE accID=@accID";
                    sql2 = "UPDATE customer SET custName=@custName, custGender=@custGender, custDOB=@custDOB WHERE cust_accID=@accID";
                    sql3 = "UPDATE address SET addrUnitNumber=@addrUnitNumber, addrBuildingName=@addrBuildingName, addrStreet=@addrStreet, addrPostCode=@addrPostCode, addrState=@addrState WHERE user_accID=@accID";
                    SqlCommand cmd1 = new SqlCommand(sql1, con);
                    SqlCommand cmd2 = new SqlCommand(sql2, con);
                    SqlCommand cmd3 = new SqlCommand(sql3, con);
                    cmd1.Parameters.AddWithValue("@accUserName", profile_field.txtUserName.Text);
                    cmd1.Parameters.AddWithValue("@accEmail", profile_field.txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@accPassword", profile_field.txtPwd.Text);
                    cmd1.Parameters.AddWithValue("@contactNumber", profile_field.txtContact.Text);
                    cmd1.Parameters.AddWithValue("@accID", usr.accID);
                    cmd2.Parameters.AddWithValue("@custName", profile_field.txtFullName.Text);
                    cmd2.Parameters.AddWithValue("@custGender", profile_field.radBtnGender.SelectedValue);
                    cmd2.Parameters.AddWithValue("@custDOB", profile_field.txtDoB.Text);
                    cmd2.Parameters.AddWithValue("@accID", usr.accID);
                    cmd3.Parameters.AddWithValue("@addrUnitNumber", profile_field.txtUnit.Text);
                    cmd3.Parameters.AddWithValue("@addrBuildingName", profile_field.txtBuilding.Text);
                    cmd3.Parameters.AddWithValue("@addrStreet", profile_field.txtStreet.Text);
                    cmd3.Parameters.AddWithValue("@addrPostCode", profile_field.txtPostcode.Text);
                    cmd3.Parameters.AddWithValue("@addrState", profile_field.droplstState.SelectedValue);
                    cmd3.Parameters.AddWithValue("@accID", usr.accID);
                    // Execute Command
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    cmd3.ExecuteNonQuery();
                    con.Close();

                    // Update Session
                    usr.email = profile_field.txtEmail.Text;
                    usr.accName = profile_field.txtUserName.Text;
                    Session["user"] = usr;
                    // Refresh the page
                    Response.Redirect("acc_Update.aspx");
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear Session
            Session.Remove("user");
            // Clear Cookies
            if ((Request.Cookies["accID"] != null))
            {
                Response.Cookies["accID"].Expires = DateTime.Now.AddDays(-100);
            }
            Response.Redirect("login.aspx");
        }

        protected void btnDelAcc_Click(object sender, EventArgs e)
        {
            Response.Redirect("acc_del.aspx");
        }
    }
}