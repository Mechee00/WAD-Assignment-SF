<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WAD_Assignment_SF.product.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body{
            background-image:linear-gradient(180deg, rgba(255, 255, 0, 0.1) 0%, rgba(0, 0, 0, 0.6) 100%), url("../src/img/product_bg.jpg");
            background-position: center;
        }
        td {
            padding: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <asp:FormView ID="fvProduct" runat="server" DataKeyNames="productId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" Height="520px" OnPageIndexChanging="FormView1_PageIndexChanging" Width="1200px" BackColor="#CCCCCC">
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="row justify-content-center">
                    <tr>
                        <td style="font-size:larger"><strong>Product Name :
                            <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                        </strong>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="6">
                            <asp:Image ID="imgProductImage" runat="server" Height="431px" ImageUrl='<%# Eval("productImage") %>' style="border-style: solid; border-color: inherit; border-width: medium;" Width="576px" />
                        </td>
                        <td colspan="2"><strong>Product ID :</strong>
                            <asp:Label ID="lblProductID" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><strong>Category :</strong>
                            <asp:Label ID="lblProductCategory" runat="server" Text='<%# Eval("ProductCategory") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"> <strong>Description :</strong>
                            <asp:Label ID="lblProductDescription" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><strong>Price :</strong> RM
                            <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnRating" runat="server" class="btn btn-warning" style="width:200px" Text="Rating" />
                        </td>
                        <td>
                            <asp:Button ID="btnShoppingCart" runat="server" class="btn btn-success" style="width:200px" Text="Add to Cart" />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
    </div>
</asp:Content>
