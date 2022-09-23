<%@ Page Title="SAFOD | Insert Product" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="InsertProduct.aspx.cs" Inherits="WAD_Assignment_SF.sell_product.InsertProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:linear-gradient(90deg, rgba(255, 255, 0, 0.096)0%, rgba(0, 0, 0, 0.2)100%), url("../src/img/product_bg1.jpg");
            background-position:center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:auto; width:85%; background-color:rgba(192,192,192,0.8)">
        <div id="InsertProductTitle" runat="server" class="ContentHead row-1" 
            style="text-align:center; padding:1%; text-decoration:underline">
            <h1>Insert Product</h1>
        </div>

        <div class="row justify-content-center">
            <table style="width:48%">
                <tr>
                    <td class="form-group">
                        <asp:Label ID="productID" runat="server" style="font-weight:bold; font-size:large" Text="Product ID: "></asp:Label>
                    </td>
                    <td class="col-3">
                        <asp:TextBox ID="TextBox1" runat="server" style="width:50%" Text="1011"></asp:TextBox>
                    </td>
                    <td class="col-4">
                        <strong style="color:red"> **Product ID auto generated</strong>
                    </td>
                </tr>
        
                <tr>
                    <td>
                        <asp:Label ID="productName" runat="server" style="font-weight:bold; font-size:large" Text="Product Name: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server" placeholder="Cheese Stick"></asp:TextBox>
                    </td>
                    <td>
                        <strong style="color:red"> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter [Product Name]." 
                                ControlToValidate="txtProductName" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
        
                <tr>
                    <td>
                        <asp:Label ID="productImage" runat="server" style="font-weight:bold; font-size:large" Text="Product Image: "></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:FileUpload ID="fileProductImage" style="width:150%; font-weight:bold; font-size:large" runat="server" />
                    </td>
                </tr>
        
                <tr>
                    <td>
                        <asp:Label ID="productDescription" runat="server" style="font-weight:bold; font-size:large" Text="Product Description: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProductDescription" style="width:200%" runat="server" placeholder="Shredded cheddar cheese & sugar"></asp:TextBox>
                    </td>    
                    <td></td>
                </tr>
        
                <tr>
                    <td>
                        <asp:Label ID="productCategory" runat="server" style="font-weight:bold; font-size:large" Text="Product Category: "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="category" style="width:80%; font-weight:bold" runat="server">
                            <asp:ListItem Value="Bread History">Bread History</asp:ListItem>
                            <asp:ListItem Value="Farm Fresh">Farm Fresh</asp:ListItem>
                            <asp:ListItem Value="Nestle">Nestle</asp:ListItem>
                            <asp:ListItem Value="Gula Cakery">Gula Cakery</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

            <div class="btn-group-vertical my-2" style="width:15%; margin-left:20%">
                <asp:Button ID="btnBack" runat="server" class="btn font-bold text-l btn-danger my-5" Text="Back" />
                <asp:Button ID="btnReset" runat="server" class="btn font-bold text-l btn-warning my-5" Text="Reset" />
                <asp:Button ID="btnSubmit" runat="server" class="btn font-bold text-l btn-success my-5" Text="Insert" />
            </div>
        </div>
        <div class="row" style="height:20px;"></div>    
    </div>
</asp:Content>
