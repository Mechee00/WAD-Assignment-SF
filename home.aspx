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

    <div class="row justify-content-center" style="margin-left:5%">
        <div class="col-5 p-3 justify-content-end">
            
            <div class="btn-group"  role="group" aria-label="Button group with nested dropdown">
                <button type="button" class="btn btn-secondary mx-2 my-2" style="width:180px">Hot Sale</button>
                <button type="button" class="btn btn-secondary mx-2 my-2" style="width:180px">Promotion</button>

                <div class="btn-group mx-2 my-2" role="group">
                    <button id="dropdownId" type="button" class="btn btn-secondary dropdown-toggle" style="width:150px" data-bs-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Categories
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownId">
                        <a class="dropdown-item" href="#">Bread History</a>
                        <a class="dropdown-item" href="#">Farm Fresh</a>
                        <a class="dropdown-item" href="#">Nestle</a>
                        <a class="dropdown-item" href="#">Gula Cakery</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="py-4" style=" width:50%;">
            <div class="row">
                <input name="search" style="width:600px" class=" form-control red-border" type="text" placeholder="Search" aria-label="Search"/>
                <asp:Button class="col-3 btn btn-primary" style="width:100px" runat="server" Text="Submit" />
            </div>
         
        </div>
    </div>

    <div class="row justify-content-center" >
        <asp:DataList ID="dlProduct" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"
            RepeatDirection="Horizontal" RepeatColumns="4" Width="100%" BackColor="White" class="text-center" BorderColor="#3366CC" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4" GridLines="Both">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle BackColor="WhiteSmoke" ForeColor="#003399"/>
            <ItemTemplate>
                <div class="zoom">
                    <!--<asp:Image ID="imgProductImage" runat="server" Height="181px" ImageUrl='<%# Eval("productImage") %>' Width="255px" />-->
                    <a href="product/ProductDetails.aspx">
                        <asp:Image ID="imageProductImage" runat="server" Height="181px" style="cursor:pointer" ImageUrl="../src/img/1-Cheese-Stick.jpg" Width="255px"/>
                    </a>
                </div>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productName], [productImage], [productPrice] FROM [Product]"></asp:SqlDataSource>
    
</asp:Content>
