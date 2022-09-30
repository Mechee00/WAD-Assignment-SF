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
    public partial class EditProduct : System.Web.UI.Page
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
                    txtProductID.Text = dr["productID"].ToString();
                    txtProductName.Text = dr["productName"].ToString();
                    imgProductImage.ImageUrl = dr["productImage"].ToString();
                    txtProductDescription.Text = dr["productDescription"].ToString();
                    ddlProductCategory.Text = dr["productCategory"].ToString();
                    txtProductPrice.Text = String.Format("{0:0.00}", dr["productPrice"]);
                }

                //Step 9: close connection and dr
                dr.Close();
                con.Close();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sell_product/SellProduct.aspx");
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //reset all data
            Server.Transfer("EditProduct.aspx");
        }

        protected void btnEdit_Click1(object sender, EventArgs e)
        {
            try
            {

                //retreive id from URL
                string productID = Request.QueryString["productID"] ?? "";

                //sql
                string sql = "";



                //establish connection
                SqlConnection con = new SqlConnection(cs);


                if (fileProductImage.HasFile)
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

                        sql = "UPDATE Product SET productName = @productName, productImage = @productImage, productDescription = @productDescription, productCategory = @productCategory, productPrice = @productPrice WHERE productID = @productID";

                        //sql command
                        SqlCommand cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@productID", productID);
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
                    }
                    else
                    {
                        lblEditStatus.Text = "Only jpg, jpeg, png files are accepted!";
                        lblEditStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }

                else
                {
                    sql = "UPDATE Product SET productName = @productName, productDescription = @productDescription, productCategory = @productCategory, productPrice = @productPrice WHERE productID = @productID";

                    //sql command
                    SqlCommand cmd = new SqlCommand(sql, con);

                    //supply value to SQL parameter
                    cmd.Parameters.AddWithValue("@productID", productID);
                    cmd.Parameters.AddWithValue("@productName", txtProductName.Text);
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
                }
                
                //close connection
                con.Close();

                Response.Write("Update Product Successful");
                Response.Redirect("~/sell_product/SellProduct.aspx");
            }

            catch (Exception ex)
            {
                lblEditStatus.Text = "Update Product Unsuccessful: " + ex.Message;
                lblEditStatus.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}