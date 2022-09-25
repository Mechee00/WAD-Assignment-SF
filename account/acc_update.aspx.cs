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
                    string sql;

                    SqlConnection con = new SqlConnection(cs);
                    sql = "SELECT * FROM account INNER JOIN customer ON account.accID = customer.cust_accID WHERE accEmail=@email";

                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@email", usr.email);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
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
                        string date = oDate.Day + "/" + oDate.Month + " /" + oDate.Year;
                        txtDoB.Text = string.Join("", date.Split(default(string[]), StringSplitOptions.RemoveEmptyEntries));
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