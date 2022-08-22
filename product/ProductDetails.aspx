<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WAD_Assignment_SF.product.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style3">
        <asp:FormView ID="FormView1" runat="server" OnPageIndexChanging="FormView1_PageIndexChanging" Width="998px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td><strong>Product Name :
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </strong>
                            <br />
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <br />
                    <tr>
                        <td colspan="2" rowspan="5">
                            <asp:Image ID="Image1" runat="server" style="border-style: solid; border-color: inherit; border-width: medium;" Height="431px" Width="576px"/>
                        </td>
                        <td>Product ID : 
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Price : RM
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="rating.aspx">Rating</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/shopping cart/ShoppingCart.aspx">Add to Cart</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
