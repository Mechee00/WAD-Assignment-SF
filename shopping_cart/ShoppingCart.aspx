<%@ Page Title="SAFOD | Shopping Cart" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WAD_Assignment_SF.shopping_cart.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .ShoppingCartTitle {
            background-color:whitesmoke;
        }
        .mydatagrid {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
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
    
    <!--Display Shoping Cart-->
        <div style="margin:auto;  width:100%; background-color:whitesmoke" align="center" class='center'>

            <!--Title-->
            <div id="ShoppingCartTitle" runat="server" class="ContentHead row-1" 
                style="text-align:center; padding:1%; text-decoration:underline">
                <h1><strong>Shopping Cart</strong></h1>
            </div>
            <br />

            <div class="text-center">

            <asp:GridView ID="gvShoppingCart" runat="server" AutoGenerateColumns="False"   
                OnRowCancelingEdit="gvShoppingCart_RowCancelingEdit" 
                OnRowDeleting="gvShoppingCart_RowDeleting" 
                OnRowEditing="gvShoppingCart_RowEditing" 
                OnRowUpdating="gvShoppingCart_RowUpdating" CellPadding="4" ForeColor="#333333" CssClass="mydatagrid" GridLines="None" Width="1579px" HorizontalAlign="Center" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Height="30px" Width="100px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="productName" HeaderText="Product Name" ReadOnly="True" SortExpression="productName" />
                    <asp:ImageField DataImageUrlField="productImage" HeaderText="ProductImage" ReadOnly="True">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="productPrice" HeaderText="Product Price (RM)" DataFormatString="{0:n}" ReadOnly="True" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:TemplateField HeaderText="Total (RM)">
                        <ItemTemplate>
                            <asp:Label ID="GrantTotal" runat="server" Text='<%# Double.Parse(Eval("productPrice").ToString())*Int32.Parse(Eval("quantity").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Height="30px" Width="100px" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Height="30px" Width="100px" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

            </div>

            <div class="col-5 font-bold text-l border border-secondary text-center my-2">
                <strong>Total Amount :
                    <asp:Label ID="lblGrantTotal" runat="server" Text="Label"></asp:Label>
                </strong> 
            </div>

            <br />
            <div class="row justify-content-center mx-auto" style="height:50px">
                <!--Button-->
                <div class="col-4 btn btn-group" style="padding: 0!important;">
                    <asp:Button ID="btnBack" runat="server" class="btn font-bold text-l btn-danger" style="width:90%" Text="Back" OnClick="btnBack_Click" />
                </div>
                <div class="col-4 btn btn-group" style="padding: 0!important;">
                    <asp:Button ID="btnCheckOut" runat="server" class="btn mx-1 font-bold text-l py-2 btn-success col" Text="Check Out" OnClick="btnCheckOut_Click" />
                </div>
            </div>
            <div class="row" style="height:20px;"></div>
        </div>
</asp:Content>
    
