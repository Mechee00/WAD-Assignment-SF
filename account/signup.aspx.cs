using System;
using System.Data.SqlClient;
using System.Data;
namespace WAD_Assignment_SF.account
{
    public partial class signup : System.Web.UI.Page
    {
        string cs = Global.accCS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string sql1, sql2, sql3, sql4, sql5;
            // Set Connectin String
            SqlConnection con = new SqlConnection(cs);
            // Prep Command
            sql1 = "INSERT INTO account (accUserName, accEmail, accPassword, contactNumber) VALUES (@accUserName, @accEmail, @accPassword, @contactNumber)";
            sql2 = "INSERT INTO customer (custName, custGender, custDOB, cust_accID) VALUES (@custName, @custGender, @custDOB, @accID)";
            sql3 = "INSERT INTO address (addrUnitNumber, addrBuildingName, addrStreet, addrPostCode, addrState, user_accID) VALUES (@addrUnitNumber, @addrBuildingName, @addrStreet, @addrPostCode, @addrState, @accID)";
            // Check Email Exist
            sql4 = "SELECT count(*) FROM account WHERE accEmail=@email";
            // Query for accID
            sql5 = "SELECT accID FROM account WHERE accEmail=@email";

            SqlCommand cmd1 = new SqlCommand(sql1, con);
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            SqlCommand cmd3 = new SqlCommand(sql3, con);
            SqlCommand cmd4 = new SqlCommand(sql4, con);
            SqlCommand cmd5 = new SqlCommand(sql5, con);

            // Execute Command
            con.Open();


            // 1. Check email
            // 2. Update account
            // 3. Get accID
            // 4. Update customer and address
            cmd4.Parameters.AddWithValue("@email", profile_field.txtEmail.Text);
            cmd5.Parameters.AddWithValue("@email", profile_field.txtEmail.Text);
            object res = cmd4.ExecuteScalar();
            if (Convert.ToInt32(res) > 0)
            {
                // Email exist
                Response.Write("<script>alert('Email already registered with an account!')</script>");
            }
            else
            {
                // Email not registerd yet
                cmd1.Parameters.AddWithValue("@accUserName", profile_field.txtUserName.Text);
                cmd1.Parameters.AddWithValue("@accEmail", profile_field.txtEmail.Text);
                cmd1.Parameters.AddWithValue("@accPassword", profile_field.txtPwd.Text);
                cmd1.Parameters.AddWithValue("@contactNumber", profile_field.txtContact.Text);

                cmd2.Parameters.AddWithValue("@custname", profile_field.txtFullName.Text);
                cmd2.Parameters.AddWithValue("@custGender", profile_field.radBtnGender.SelectedValue);
                cmd2.Parameters.AddWithValue("@custDOB", profile_field.txtDoB.Text);

                cmd3.Parameters.AddWithValue("@addrUnitNumber", profile_field.txtUnit.Text);
                cmd3.Parameters.AddWithValue("@addrBuildingName", profile_field.txtBuilding.Text);
                cmd3.Parameters.AddWithValue("@addrStreet", profile_field.txtStreet.Text);
                cmd3.Parameters.AddWithValue("@addrPostCode", profile_field.txtPostcode.Text);
                cmd3.Parameters.AddWithValue("@addrState", profile_field.droplstState.SelectedValue);

                cmd1.ExecuteNonQuery(); // Update Account

                SqlDataReader dr = cmd5.ExecuteReader();
                if (dr.Read())
                {
                    string accID = dr["accID"].ToString();
                    cmd2.Parameters.AddWithValue("@accID", accID);
                    cmd3.Parameters.AddWithValue("@accID", accID);
                    dr.Close();
                    cmd2.ExecuteNonQuery(); // Update Customer
                    cmd3.ExecuteNonQuery(); // Update Address
                    Session.Remove("user");
                    // CreateChildControls new session data
                    user usr = new user();
                    usr.email = profile_field.txtEmail.Text;
                    usr.accName = profile_field.txtUserName.Text;
                    Session["user"] = usr;
                }
                con.Close();
                
                if ((Request.Cookies["accID"] != null))
                {
                    Response.Cookies["accID"].Expires = DateTime.Now.AddDays(-100);
                }
                Response.Redirect("../home.aspx");
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("../home.aspx");
        }
    }
}