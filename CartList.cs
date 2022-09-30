using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAD_Assignment_SF
{
    public class CartList
    {
        public List<CartItem> Items { get; set; }
        
        public CartList()
        {
            Items = new List<CartItem>();
        } 

        private int ItemIndexOf(int productID)
        {
            foreach(CartItem item in Items)
            {
                if(item.productID == productID)
                {
                    return Items.IndexOf(item);  
                }
            }
            return -1;
        }

        public void Insert(CartItem item)
        {
            int index = ItemIndexOf(item.productID);
            
            if(index == -1)
            {
                Items.Add(item);
            }
            else
            {
                Items[index].quantity++;
            }
        }
        
        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }

        public void Update(int rowID, int quantity)
        {
            if (quantity>0)
            {
                Items[rowID].quantity = quantity;
            }
            else
            {
                Delete(rowID);
            }
        }

        public double GrandTotal
        {
            get
            {
                if(Items == null)
                {
                    return 0;
                }
                else
                {
                    double grandTotal = 0;
                    foreach(CartItem item in Items)
                    {
                        grandTotal += item.quantity * item.productPrice;
                    }
                    return grandTotal;
                }
            }
        }
    }
}