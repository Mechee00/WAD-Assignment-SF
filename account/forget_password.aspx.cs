using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Drawing;

namespace WAD_Assignment_SF.account
{
    public partial class forget_password : System.Web.UI.Page
    {
        string cs = Global.accCS;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetPass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sql1 = "SELECT accEmail, accPassword, accUserName FROM account WHERE accEmail=@email";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.Add(new SqlParameter("@email", txtEmail.Text));
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string userName = dr["accUserName"].ToString();
                string passwrod = dr["accPassword"].ToString();
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress("mr.cheah@live.com", "Safod Malaysia");
                mm.To.Add(txtEmail.Text);
                mm.Subject = "Safod Password Recovery";
                mm.Body = string.Format("Dear <h1>{0}</h1><br><br>The password for yoru account is: <h1>{1}</h1>", userName, passwrod);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient("smtp-mail.outlook.com", 587);
                //smtp.Host = "smtp.gmail.com";
                //smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("mr.cheah@live.com", "hnknakezjiakygkp");
                smtp.EnableSsl = true;

                smtp.Send(mm);
                lblSuccessMessage.Text = "Your password has been sent to your registered Email.";
                dr.Close();
                con.Close();
            }
            else
            {
                lblSuccessMessage.Text = "Sorry, the email address is not registered.";
                lblSuccessMessage.ForeColor = Color.Red;
            }


        }
    }
}