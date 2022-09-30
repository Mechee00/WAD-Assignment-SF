<%@ Page Title="SAFOD | Sell Product" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="SellProduct.aspx.cs" Inherits="WAD_Assignment_SF.sell_product.SellProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:linear-gradient(90deg, rgba(255, 255, 0, 0.096)0%, rgba(0, 0, 0, 0.2)100%), url("../src/img/product_bg.jpg");
        }
        .mydatagrid{
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <!--Display Sell Product-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE FROM [Product] WHERE [productID] = @productID" 
        InsertCommand="INSERT INTO [Product] ([productName], [productImage], [productDescription], [productCategory], [productPrice]) VALUES (@productName, @productImage, @productDescription, @productCategory, @productPrice)" 
        UpdateCommand="UPDATE [Product] SET [productName] = @productName, [productImage] = @productImage, [productDescription] = @productDescription, [productCategory] = @productCategory, [productPrice] = @productPrice WHERE [productID] = @productID">
        <DeleteParameters>
            <asp:Parameter Name="productID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="productImage" Type="String" />
            <asp:Parameter Name="productDescription" Type="String" />
            <asp:Parameter Name="productCategory" Type="String" />
            <asp:Parameter Name="productPrice" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="productImage" Type="String" />
            <asp:Parameter Name="productDescription" Type="String" />
            <asp:Parameter Name="productCategory" Type="String" />
            <asp:Parameter Name="productPrice" Type="Decimal" />
            <asp:Parameter Name="productID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div style="margin:auto; width:100%; background-color:whitesmoke">
        <table style="width:100%">
            <tr>
                <!--Title-->
                <td id="SellProductTitle" class="ContentHeader" style="padding:1%">
                    <h1 style="margin-left:10%" class="text-decoration-underline"><strong>Sell Product</strong></h1>
                </td>
                <!--Insert button-->
                <td class="col-3">
                    <asp:Button ID="btnInsertProduct" runat="server" class="btn font-bold text-l btn-success" style="width:60%" Text="Insert Product" OnClick="btnInsertProduct_Click" />
                </td>
            </tr>
        </table>

        <!--Display Product-->
        <asp:GridView ID="gvSellProduct" runat="server" AutoGenerateColumns="False" DataKeyNames="productID" DataSourceID="SqlDataSource1" 
            CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mydatagrid" Width="1579px" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="productID" HeaderText="Product ID" InsertVisible="False" ReadOnly="True" SortExpression="productID" />
                <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
                <asp:ImageField DataImageUrlField="productImage" HeaderText="Product Image">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="productDescription" HeaderText="Description" SortExpression="productDescription" />
                <asp:BoundField DataField="productCategory" HeaderText="Category" SortExpression="productCategory" />
                <asp:BoundField DataField="productPrice" DataFormatString="{0:n}" HeaderText="Price (RM)" SortExpression="productPrice" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/sell_product/EditProduct.aspx?productID={0}" Text="Edit">
                <ControlStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="100px" />
                <ItemStyle Font-Bold="True" />
                </asp:HyperLinkField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="White" Font-Bold="True" Height="30px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
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

        <div class="row justify-content-center mx-auto" style="height:50px">
            <!--Display Total Item-->
            <div class="col-5 font-bold text-l border border-secondary text-center my-2" style="background-color:whitesmoke">
                <strong class="row pt-2">
                    <asp:Label ID="lblTotalProduct" runat="server"></asp:Label>
                </strong>
            </div>

            <!--Back button-->
            <div class="col-3 btn btn-group">
                <asp:Button ID="btnBack" runat="server" class="btn font-bold text-l btn-danger" Text="Back" OnClick="btnBack_Click"/>
            </div>
        </div>

        <div class="row" style="height:20px;"></div>
    </div>
</asp:Content>
