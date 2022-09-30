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

namespace WAD_Assignment_SF.shopping_cart
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        CartList shoppingCart = new CartList();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["shoppingCart"] == null)
                {
                    Response.Write("<script language=javascript>alert('You shopping cart is empty!! Please add cart the product you want~')</script>");
                    Session["shoppingCart"] = new CartList();
                }
            }

            shoppingCart = (CartList)Session["shoppingCart"];
            if (!IsPostBack)
            {
                FillData();
            }
        }

        private void FillData()
        {
            gvShoppingCart.DataSource = shoppingCart.Items;
            gvShoppingCart.DataBind();
            if (shoppingCart.Items.Count == 0)
            {
                lblGrantTotal.Visible = false;
            }
            else
            {
                lblGrantTotal.Text = String.Format("Grand Total ={0,19:C}", shoppingCart.GrandTotal);
                lblGrantTotal.Visible = true;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/delivery/delivery.aspx?grantTotal=" + lblGrantTotal.Text);
        }

        protected void gvShoppingCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Reset the edit index.
            gvShoppingCart.EditIndex = -1;
            //Bind data to the GridView control.
            FillData();
        }

        protected void gvShoppingCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            shoppingCart.Delete(e.RowIndex);
            FillData();
        }

        protected void gvShoppingCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Update the values.
            TextBox txtQuantity = (TextBox)gvShoppingCart.Rows[e.RowIndex].Cells[3].Controls[0];
            int quantity = Convert.ToInt32(txtQuantity.Text);
            shoppingCart.Update(e.RowIndex, quantity);

            //Reset the edit index.
            gvShoppingCart.EditIndex = -1;

            //Bind data to the GridView control.
            FillData();
        }

        protected void gvShoppingCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Set the edit index.
            gvShoppingCart.EditIndex = e.NewEditIndex;

            //Bind data to the GridView control.
            FillData();
        }
    }
}