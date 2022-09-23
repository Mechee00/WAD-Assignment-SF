<%@ Page Title="SAFOD | Sell Product" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="SellProduct.aspx.cs" Inherits="WAD_Assignment_SF.sell_product.SellProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:linear-gradient(90deg, rgba(255, 255, 0, 0.096)0%, rgba(0, 0, 0, 0.2)100%), url("../src/img/product_bg.jpg");;
        }
        .mydatagrid{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE FROM [Product] WHERE [productId] = @productId" InsertCommand="INSERT INTO [Product] ([productName], [productImage], [productCategory], [productDescription], [productPrice]) VALUES (@productName, @productImage, @productCategory, @productDescription, @productPrice)" UpdateCommand="UPDATE [Product] SET [productName] = @productName, [productImage] = @productImage, [productCategory] = @productCategory, [productDescription] = @productDescription, [productPrice] = @productPrice WHERE [productId] = @productId">
        <DeleteParameters>
            <asp:Parameter Name="productId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="productImage" Type="Object" />
            <asp:Parameter Name="productCategory" Type="String" />
            <asp:Parameter Name="productDescription" Type="String" />
            <asp:Parameter Name="productPrice" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="productImage" Type="Object" />
            <asp:Parameter Name="productCategory" Type="String" />
            <asp:Parameter Name="productDescription" Type="String" />
            <asp:Parameter Name="productPrice" Type="Decimal" />
            <asp:Parameter Name="productId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div style="margin:auto; width:85%; background-color:white">
        <table style="width:100%">
            <tr>
                <td id="SellProductTitle" class="ContentHeader" style="padding:1%">
                    <h1>Sell Product</h1>
                </td>
                <td class="col-3">
                    <asp:Button ID="btnInsertProduct" runat="server" class="btn font-bold text-l btn-success" style="width:60%" Text="Insert Product" OnClick="btnInsertProduct_Click" />
                </td>
            </tr>
        </table>

        <asp:GridView ID="gvSellProduct" runat="server" AutoGenerateColumns="False" DataKeyNames="productId" DataSourceID="SqlDataSource1" 
            CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mydatagrid" Height="564px" Width="1306px" AllowPaging="True" AllowSorting="True" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />

                <asp:BoundField DataField="productId" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
                <asp:BoundField DataField="productCategory" HeaderText="Product Category" SortExpression="productCategory" />
                <asp:BoundField DataField="productDescription" HeaderText="Product Description" SortExpression="productDescription" />
                <asp:BoundField DataField="productPrice" DataFormatString="{0:0.00}" HeaderText="Product Price" SortExpression="productPrice" />
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
            <div class="col-5 font-bold text-l border border-secondary text-center my-2" style="background-color:whitesmoke">
                <strong class="row pt-2">
                    <asp:Label ID="totalItem" runat="server" Text="Total Item: 0"></asp:Label>
                </strong>
            </div>
            <div class="col-3 btn btn-group">
                <asp:Button ID="btnBack" runat="server" class="btn font-bold text-l btn-danger" Text="Back" />
            </div>
        </div>

        <div class="row" style="height:20px;"></div>
    </div>
</asp:Content>
