<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WAD_Assignment_SF.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productName], [productImage], [productPrice] FROM [Product]"></asp:SqlDataSource>
    <div class="btn-group-horizontal" role="group" "margin-left:5%; width:50%%; display:flex">
        <button type="button" class="btn btn-secondary">Hot Sale</button>
        <button type="button" class="btn btn-secondary">Promotion</button>
        <div class="btn-group" role="group">
            <button id="dropdownId" type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown"
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

    <div class="input-group md-form form-sm form-2 pl-0" style="width:50%; right: 0">
        <input name="search" class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search"/>
        <div class="input-group-append">
            <span>
                <asp:Button class="btn btn-primary" runat="server" Text="Submit" />
            </span>
        </div>
    </div>

    <div class="row justify-content-center" >
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="265px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal" RepeatColumns="4" Width="100%" BackColor="White" class="text-center" BorderColor="#3366CC" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4" GridLines="Both">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle BackColor="WhiteSmoke" ForeColor="#003399"/>
            <ItemTemplate>
                productName:
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
                
                <br />
                productImage:
                <asp:Label ID="productImageLabel" runat="server" Text='<%# Eval("productImage") %>' />
                <br />
                productPrice:
                <asp:Label ID="productPriceLabel" runat="server" Text='<%# Eval("productPrice") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
    </div>
</asp:Content>
