<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WAD_Assignment_SF.product.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body{
            background-color:whitesmoke;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productName], [productImage], [productPrice] FROM [Product]"></asp:SqlDataSource>

     <div class="container" style="margin-left:5%; width:50%%; display:flex">
         <asp:Menu ID="Menu" runat="server" Orientation="Horizontal" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
             <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
             <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <DynamicMenuStyle BackColor="#B5C7DE" />
             <DynamicSelectedStyle BackColor="#507CD1" />
             <Items>
                 <asp:MenuItem Text="Hot Sale" Value="Hot Sale"></asp:MenuItem>
                 <asp:MenuItem Text="Bread History" Value="Bread History"></asp:MenuItem>
                 <asp:MenuItem Text="Farm Fresh" Value="Farm Fresh"></asp:MenuItem>
                 <asp:MenuItem Text="Nestle" Value="Nestle"></asp:MenuItem>
                 <asp:MenuItem Text="Gula Cakery" Value="Gula Cakery"></asp:MenuItem>
                 
             </Items>

             <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
             <StaticMenuItemStyle Font-Size="Medium" HorizontalPadding="10px" VerticalPadding="8px" />
             <StaticSelectedStyle BackColor="#507CD1" />
             
         </asp:Menu>

         <div class="input-group md-form form-sm form-2 pl-0" style="width:50%; right: 0">
             <input name="search" class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search"/>
             <div class="input-group-append">
                 <span>
                     <asp:Button class="btn btn-primary" runat="server" Text="Submit" />
                 </span>
             </div>
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
                <div class="">
                    <asp:Image ID="imgProductImage" runat="server" Height="181px" ImageUrl='<%# Eval("productImage") %>' Width="255px" />
                </div>
                
                <br />
                <strong>
                    <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                </strong>
                <br />
                <strong>
                    <asp:Label ID="lblRM" runat="server" Text="RM "></asp:Label>
                    <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("productPrice") %>'></asp:Label>
                </strong>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
    </div>

</asp:Content>
