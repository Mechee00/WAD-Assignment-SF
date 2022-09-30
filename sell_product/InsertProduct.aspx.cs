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

namespace WAD_Assignment_SF.sell_product
{
    public partial class InsertProduct : System.Web.UI.Page
    {
        //retreive connection string from Global.asax file
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //establish connection
                SqlConnection con = new SqlConnection(cs);

                //open connection
                con.Open();

                //product
                string checkProduct = "SELECT productID FROM Product ORDER BY productID DESC";

                //sql command
                SqlCommand cmd = new SqlCommand(checkProduct, con);

                //run sql command
                //NOTE: executeReader() - when multiple fields/records returned
                //executeScalar() - when only ONE (1) value returned
                //executeNonQuery() - when we perform CUD
                int newProductID = Convert.ToInt32(cmd.ExecuteScalar().ToString()) +1;

                //assign new product ID into lblProductID
                txtProductID.Text = newProductID.ToString();

                //close connection
                con.Close();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sell_product/SellProduct.aspx");
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {

            //server control event
            //check to make sure no error in the page
            if (Page.IsValid)
            {
                if (fileProductImage.HasFile)
                {
                    try
                    {
                        //get image extension 
                        string extension = Path.GetExtension(fileProductImage.PostedFile.FileName);
                        if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                        {
                            //get image name
                            string productImageFileName = Path.GetFileName(fileProductImage.PostedFile.FileName);

                            //save it into ~/src/img/
                            fileProductImage.PostedFile.SaveAs(Server.MapPath("~/src/img/" + productImageFileName));

                            //assign image
                            imgProductImage.ImageUrl = "~/src/img/" + productImageFileName;

                            //sql
                            string sql = @"INSERT INTO Product (productName, productImage, productDescription, productCategory, productPrice) 
                                VALUES (@productName, @productImage, @productDescription, @productCategory, @productPrice)";

                            //establish connection
                            SqlConnection con = new SqlConnection(cs);

                            //sql command
                            SqlCommand cmd = new SqlCommand(sql, con);

                            //supply value to SQL parameter
                            cmd.Parameters.AddWithValue("@productName", txtProductName.Text);
                            cmd.Parameters.AddWithValue("@productImage", "~/src/img/" + productImageFileName);
                            cmd.Parameters.AddWithValue("@productDescription", txtProductDescription.Text);
                            cmd.Parameters.AddWithValue("@productCategory", ddlProductCategory.Text);
                            cmd.Parameters.AddWithValue("@productPrice", txtProductPrice.Text);

                            //open connection
                            con.Open();

                            //run sql command
                            //NOTE: executeReader() - when multiple fields/records returned
                            //executeScalar() - when only ONE (1) value returned
                            //executeNonQuery() - when we perform CUD
                            int count = cmd.ExecuteNonQuery();

                            //close connection
                            con.Close();

                            Response.Write("Insert Product Successful");
                            Response.Redirect("~/sell_product/SellProduct.aspx");
                        }

                        else
                        {
                            lblInsertStatus.Text="Only jpg, jpeg, png files are accepted!";
                            lblInsertStatus.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblInsertStatus.Text="Insert Product Unsuccessful: " + ex.Message;
                        lblInsertStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //reset all data
            Server.Transfer("InsertProduct.aspx");
        }
    }
}