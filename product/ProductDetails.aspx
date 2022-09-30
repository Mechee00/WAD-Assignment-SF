<%@ Page Title="SAFOD | Product Details" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WAD_Assignment_SF.product.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/Javascript" language ="javascript" >
        function addCartSuccessful()
        {
            alert("Add Cart Successful~");  
        }
    </script>  
    <style type="text/css">
        body{
            background-color:whitesmoke;
            background-position: center;
        }
        td {
            padding: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!--Database-->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
       
        <br />

    <div>
        <table align="center" style="margin:auto">
            <!--Product Name-->
            <tr>
                <td style="font-size:xx-large"><strong>Product Name :</strong>
                    <asp:Label ID="lblProductName" runat="server"></asp:Label>
                </td>
                <td></td>
                <!--back button-->
                <td>
                    <asp:Button ID="btnBack" runat="server" class="btn font-bold text-l btn-danger" style="width:200px; height:50px" Text="Back" OnClick="btnBack_Click"/>
                </td>
            </tr>

            <!--Product Image-->
            <tr>
                <td rowspan="8">
                    <asp:Image ID="imgProductImage" runat="server" Height="431px" style="border-style: solid; border-color: inherit; border-width: medium;" Width="576px" />
                </td>
                <td colspan="2" style="font-size:large"><strong>Product ID :</strong>
                    <asp:Label ID="lblProductID" runat="server"></asp:Label>
                </td>
            </tr>
            
            <!--Product Category-->
            <tr>
                <td colspan="2" style="font-size:large"><strong>Category :</strong>
                    <asp:Label ID="lblProductCategory" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-size:large"> <strong>Description :</strong>
                    <asp:Label ID="lblProductDescription" runat="server"></asp:Label>
                </td>
            </tr>
            
            <!--Product Price-->
            <tr>
                <td style="font-size:large"><strong>Price :</strong> RM
                    <asp:Label ID="lblProductPrice" runat="server"></asp:Label>
                </td>
                <td style="font-size:large"><strong>Quantity :</strong>
                    <asp:DropDownList ID="ddlProductQuantity" runat="server">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
            <!--Button-->
            <tr>
                <td>
                    <asp:Button ID="btnComment" runat="server" class="btn font-bold text-l btn-warning" style="width:200px; height:50px" Text="Comment" 
                        OnClick="btnComment_Click"/>
                </td>
                <td>
                    <asp:Button ID="btnAddCart" runat="server" class="btn font-bold text-l btn-success" style="width:200px; height:50px" 
                        OnClick="btnAddCart_Click" Text="Add to Cart" OnClientClick ="addCartSuccessful()"/>
                </td>
            </tr>
        </table>
        
        <br />
    </div>
</asp:Content>
