using System;
using System.Data.SqlClient;
using System.Net;
using System.Web.UI.WebControls;
using System.Web;

namespace WAD_Assignment_SF.delivery
{
    public partial class delivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            string orderid = Request.QueryString["orderid"] ?? "";
            if (Page.IsValid)
            {
                String address = String.Format(unittb.Text + " " + buildingtb.Text + ", " + streettb.Text + ", " + PostalCodeTB.Text + ", " + CityTB.Text + ", " + StateTB.Text);
                HttpCookie add = new HttpCookie("Address", address.ToString());
                add.Expires = DateTime.Now.AddDays(14);
                Response.Cookies.Add(add);
                Response.Redirect("deliveryconfirm.aspx?orderid="+orderid);
            }
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            string orderid = Request.QueryString["orderid"] ?? "";
            Server.Transfer("deliveryconfirm.aspx?orderid="+orderid);
        }
    }
}