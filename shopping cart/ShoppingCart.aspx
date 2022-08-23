<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WAD_Assignment_SF.shopping_cart.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body{
            background-image:linear-gradient(180deg, rgba(255, 255, 0, 0.1) 0%, rgba(0, 0, 0, .1) 100%), url("../src/img/product_bg.jpg");
            background-position: center;
        }
        .ShoppingCartTitle {
            background-color:white;
        }
        .mydatagrid{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        .rows{
            background-color:#E3EAEB;
        }
        .altRow{
            background-color:White;
        }
        .rows:hover
        {
            color: black;
            font-weight: bold;
            background-color:darkcyan;
        }
        .altRow:hover{
            color: black;
            font-weight: bold;
            background-color:darkcyan;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="ShoppingCartTitle" runat="server" class="ContentHead" 
        style="margin-left:5%; padding:1%; text-shadow:2px 2px white;"><h1>Shopping Cart</h1></div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productId], [productName], [productPrice] FROM [Product]"></asp:SqlDataSource>
    <br />

    <div class="table table-borderless table-dark">
        <asp:GridView ID="gvProduct" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="productId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="564px" Width="1306px" 
            CssClass="mydatagrid" RowStyle-CssClass="rows" AlternatingRowStyle-CssClass="altRow"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Remove Item">
                    <ItemTemplate>
                        <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField DataField="productId" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="Product Name" />
                <asp:BoundField DataField="productPrice" HeaderText="Product Price" />
                
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Button ID="addQuantity" runat="server" Text="+" />
                        <asp:TextBox ID="PurchaseQuantity" Width="40" style="text-align:center" runat="server" Text="0"></asp:TextBox>
                        <asp:Button ID="removeQuantity" runat="server" Text="-" />
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Sub Total (RM)">
                    <ItemTemplate>
                        <strong>
                            <asp:Label ID="subTotal" runat="server" Text="0.00"></asp:Label>
                        </strong>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    
    <br />
    <div class="row justify-content-center mx-auto" style="height:50px">
        <div class="col-5 font-bold text-l border border-secondary text-center" style="background-color:whitesmoke">
            <strong class="row pt-2">
                <asp:Label ID="totalAmount" runat="server" Text="Total Amount: RM "></asp:Label>
            </strong>
        </div>
        <div class="col-4 btn btn-group" style="padding: 0!important;">
            <asp:Button ID="btnCheckOut" runat="server" class="btn mx-1 font-bold text-l py-2 btn-success col" Text="Check Out" />
            <asp:Button ID="btnBack" runat="server" class="btn mx-1 font-bold text-l py-2 btn-danger col" Text="Back" />
        </div>
    </div>
    <div class="row" style="height:20px;"></div>
</asp:Content>
    
