using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//import library
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace WAD_Assignment_SF.product
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        //retreive connection string from Global.asax file
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //mean it RUN for the FIRST TIME ONLY
                //retreive id from URL
                string productID = Request.QueryString["productID"] ?? "";

                //Step 3:
                string sql = "SELECT * FROM Product WHERE productId = @productID";

                //Step 4: establish connection
                SqlConnection con = new SqlConnection(cs);

                //Step 5: sql command
                SqlCommand cmd = new SqlCommand(sql, con);

                //Step 5.1: supply value to sql parameter
                cmd.Parameters.AddWithValue("@productID", productID);

                //Step 6: open connection
                con.Open();

                //Step 7: run sql command
                SqlDataReader dr = cmd.ExecuteReader();

                //Step 8: display output
                if (dr.Read())
                {
                    lblProductID.Text = dr["productID"].ToString();
                    lblProductName.Text = dr["productName"].ToString();
                    imgProductImage.ImageUrl = dr["productImage"].ToString();
                    lblProductDescription.Text = dr["productDescription"].ToString();
                    lblProductCategory.Text = dr["productCategory"].ToString();
                    lblProductPrice.Text = String.Format("{0:0.00}",dr["productPrice"]);
                }

                //Step 9: close connection and dr
                dr.Close();
                con.Close();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            CartList shoppingCart;

            if (Session["shoppingCart"] == null)
            {
                shoppingCart = new CartList();
                Session["shoppingCart"] = shoppingCart;
            }
            shoppingCart = (CartList)Session["shoppingCart"];

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            String sql = "SELECT * FROM Product WHERE productID=" + Request.QueryString["productID"];
            SqlCommand cmd = new SqlCommand(sql, con);
            dt.Load(cmd.ExecuteReader());
            con.Close();
            DataRow row = dt.Rows[0];
            /*public CartItem(int productID, string productName, string productImage, string productCategory, string description, double productPrice, int quantity)*/
            CartItem cartItem = new CartItem();
            cartItem.productID = (int)row[0];
            cartItem.productName = row[1].ToString();
            cartItem.productImage = row[2].ToString();
            cartItem.description = row[3].ToString();
            cartItem.description = row[4].ToString();
            cartItem.productPrice = Double.Parse(row[5].ToString());
            cartItem.quantity = Int32.Parse(ddlProductQuantity.SelectedValue);

            shoppingCart.Insert(cartItem);

            Session["shoppingCart"] = shoppingCart;

            Response.Write("<script language=javascript>alert('Add Cart Successfully~')</script>");
            Server.Transfer("~/shopping_cart/ShoppingCart.aspx" );
        }
        
        protected void btnComment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/comment/commentList.aspx");
        }
    }
}