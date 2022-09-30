using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAD_Assignment_SF
{
    public class CartItem
    {
        public int productID { get; set; }

        public string productName { get; set; }

        public string productImage { get; set; }

        public string productCategory { get; set; }

        public string description { get; set; }

        public double productPrice { get; set; }
        public int quantity { get; set; }
        

        public CartItem()
        {

        }

        public CartItem(int productID, string productName, string productImage, string productCategory, string description, double productPrice, int quantity)
        {
            this.productID = productID;
            this.productName = productName;
            this.productImage = productImage;
            this.productCategory = productCategory;
            this.description = description;
            this.productPrice = productPrice;
            this.quantity = quantity;   
        }
    }
}