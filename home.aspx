<%@ Page Title="SAFOD | Home" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WAD_Assignment_SF.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body{
            background-color:whitesmoke;
        }
        .zoom:hover {
          -ms-transform: scale(1.1);
          -webkit-transform: scale(1.1); 
          transform: scale(1.1); 
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!--database-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productName], [productImage], [productPrice], [productID] FROM [Product]"></asp:SqlDataSource>
    <div class="row justify-content-center" style="margin-left:5%; height:100px">
        <div class="col-5 p-3 justify-content-end">
            <!--nav button-->
            <div class="btn-group"  role="group" aria-label="Button group with nested dropdown">

                <strong>
                    <asp:Button ID="btnAllProduct" class="btn btn-secondary mx-2 my-2" style="width:180px" runat="server" Text="All Product" />
                    <asp:Button ID="btnPromotion" class="btn btn-secondary mx-2 my-2" style="width:180px" runat="server" Text="Promotion" OnClick="btnPromotion_Click" />
                </strong>

                <div class="btn-group mx-2 my-2" role="group">
                    <asp:DropDownList class="btn btn-secondary dropdown-toggle" style="width:150px" ID="DropDownList1" runat="server">
                        <asp:ListItem>Category</asp:ListItem>
                        <asp:ListItem>Bread History</asp:ListItem>
                        <asp:ListItem>Farm Fresh</asp:ListItem>
                        <asp:ListItem>Nestle</asp:ListItem>
                        <asp:ListItem>Gula Cakery</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <!--search-->
        <div class="py-4" style=" width:50%;">
            <div class="row">
                <input name="search" style="width:600px" class=" form-control red-border" type="text" placeholder="Search" aria-label="Search"/>
                <asp:Button class="col-3 btn btn-primary" style="width:100px" runat="server" Text="Submit" />
            </div>
         
        </div>
    </div>
    <!--product list-->
    <div class="row" >
        <asp:DataList ID="dlProduct" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="5" 
            Width="100%" BackColor="White" class="text-center" BorderColor="#3366CC" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4" GridLines="Both">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle BackColor="WhiteSmoke" ForeColor="#003399"/>
            <ItemTemplate>
                <div class="zoom">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/product/ProductDetails.aspx?productID=" + Eval("productID") %>' runat="server">
                        <asp:Image ID="imgProductImage" runat="server" Height="200px" ImageUrl='<%# Eval("productImage") %>' Width="255px" 
                            style="cursor:pointer; border-style: solid; border-color: black; border-width: medium;"/>
                    </asp:HyperLink>
                </div>
                <br />
                <strong>
                    <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                </strong>
                <br />
                <strong>
                    <asp:Label ID="lblRM" runat="server" Text="RM "></asp:Label>
                    <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("productPrice", "{0:N2}") %>'></asp:Label>
                </strong>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
    </div>
    <div class="row" style="height:20px;"></div>
    
</asp:Content>
