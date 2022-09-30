<%@ Page Title="SAFOD | Insert Product" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="InsertProduct.aspx.cs" Inherits="WAD_Assignment_SF.sell_product.InsertProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
         function previewFile() {
             var preview = document.querySelector('#<%=imgProductImage.ClientID %>');
                var file = document.querySelector('#<%=fileProductImage.ClientID %>').files[0];
             var reader = new FileReader();

             reader.onloadend = function () {
                 preview.src = reader.result;
             }

             if (file) {
                 reader.readAsDataURL(file);
             } else {
                 preview.src = "";
             }
         }
    </script>
    <style>
        body{
            background-image:linear-gradient(90deg, rgba(255, 255, 0, 0.096)0%, rgba(0, 0, 0, 0.2)100%), url("../src/img/product_bg1.jpg");
            background-position:center;
        }
        .auto-style3 {
            width: 285px;
            font-size: x-large;
        }
        .auto-style4 {
            width: 141px;
        }
        .auto-style6 {
            width: 334px;
        }
        .auto-style7 {
            width: 644px;
        }
        .auto-style9 {
            font-size: large;
            width: 334px;
        }
        .auto-style10 {
            width: 644px;
            font-size: large;
        }
    </style>
</asp:Content>

<asp:Content ID="InsertProduct" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Title-->
    <div style="margin:auto; width:85%; background-color:rgba(192,192,192,0.8)">
        <div id="InsertProductTitle" runat="server" class="ContentHead row-1" 
            style="text-align:center; padding:1%; text-decoration:underline">
            <h1><strong>Insert Product</strong></h1>
        </div>

        <table style="width: 100%;">
            <!--back button-->
            <tr>
                <td class="auto-style4" rowspan="15"></td>
                <td class="auto-style3"></td>
                <td class="auto-style7"></td>
                <td class="auto-style6" rowspan="2">
                    <asp:Button ID="btnBack" runat="server" class="btn font-bold text-l btn-danger my-5" Text="Back" OnClick="btnBack_Click" Width="200px" Height="50px" 
                        CausesValidation="False"/>
                </td>
            </tr>

            <!--product ID-->
            <tr>
                <td class="auto-style3"><strong>Product ID:</strong></td>
                <td class="auto-style7">
                    <strong>
                        <asp:TextBox ID="txtProductID" runat="server" Width="94px" CssClass="text-xl" ReadOnly="true"></asp:TextBox>
                    </strong>
                    <strong style="color:black"> <span class="text-l">*[Product ID] auto generated*</span></strong>
                </td>
            </tr>

            <!--product Name-->
            <tr>
                <td class="auto-style3"><strong>Product Name:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtProductName" runat="server" placeholder="E.g. Cheese Stick" CssClass="text-l" Width="330px"></asp:TextBox>
                    <strong style="color:red"> 
                        <asp:RequiredFieldValidator ID="validateProductName" runat="server" ErrorMessage="Please enter [Product Name]." 
                            ControlToValidate="txtProductName" CssClass="error" Display="Dynamic" style="font-size: large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="validateAplhebet1" runat="server" ControlToValidate="txtProductName" 
                            ValidationExpression="^[a-zA-Z ]+$" ErrorMessage="Invalid input all must be in Aplhabet" Display="Dynamic" 
                            style="font-size: large"></asp:RegularExpressionValidator>
                    </strong>
                </td>
                <td class="auto-style6"></td>
            </tr>

            <!--reset button-->
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7"></td>
                <td class="auto-style6" rowspan="3">
                <asp:Button ID="btnReset" runat="server" class="btn font-bold text-l btn-warning my-5" Text="Reset" Width="200px" Height="50px" OnClick="btnReset_Click" CausesValidation="False"/>
                </td>
            </tr>

            <!--product image-->
            <tr>
                <td class="auto-style3"><strong>Product Image:</strong></td>
                <td class="auto-style7">
                    <asp:FileUpload ID="fileProductImage" style="font-weight:bold; " runat="server" Width="244px" CssClass="text-l" onchange="previewFile()"/>
                &nbsp;<asp:Image ID="imgProductImage" runat="server" Height="156px" Width="182px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7"></td>
            </tr>

            <!--product description-->
            <tr>
                <td class="auto-style3"><strong>Product Description:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtProductDescription" runat="server" placeholder="E.g. Shredded cheddar cheese & sugar" Width="684px" CssClass="text-l"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="text-l">
                    <strong style="color:red"> 
                        <asp:RequiredFieldValidator ID="validateProductDescription" runat="server" ErrorMessage="Please enter [Product Description]." 
                                ControlToValidate="txtProductDescription" CssClass="error" Display="Dynamic" style="font-size: large"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style6" rowspan="3">
                <asp:Button ID="btnInsert" runat="server" class="btn font-bold text-l btn-success my-5" Text="Insert"  Width="200px" Height="50px" OnClick="btnInsert_Click"/>
                </td>
            </tr>

            <!--product category-->
            <tr>
                <td class="auto-style3"><strong>Product Category:</strong></td>
                <td class="auto-style7">
                        <asp:DropDownList ID="ddlProductCategory" style="font-weight:bold" runat="server" CssClass="text-l">
                            <asp:ListItem Value="Bread History">Bread History</asp:ListItem>
                            <asp:ListItem Value="Farm Fresh">Farm Fresh</asp:ListItem>
                            <asp:ListItem Value="Nestle">Nestle</asp:ListItem>
                            <asp:ListItem Value="Gula Cakery">Gula Cakery</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-xl"><strong>Product Price:</strong></td>
                <td class="text-l"><strong>RM</strong>
                    <asp:TextBox ID="txtProductPrice" runat="server" CssClass="text-l" placeholder="E.g. 2.50"></asp:TextBox>
                    <strong style="color:red"> 
                        <asp:RequiredFieldValidator ID="validateProductPrice" runat="server" ErrorMessage="Please enter [Product Price]." 
                                ControlToValidate="txtProductPrice" CssClass="error" Display="Dynamic"
                            style="font-size: large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtProductPrice" 
                            ValidationExpression="[0-9]{1,3}\.?[0-9]{2}" ErrorMessage="Invalid input must be in Two Decimal Value" Display="Dynamic" 
                            style="font-size: large"></asp:RegularExpressionValidator>
                    </strong>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="lblInsertStatus" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-l"></td>
                <td class="text-l"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="text-l" colspan="3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="text-l" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-l" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-l" colspan="3">&nbsp;</td>
            </tr>
        </table> 
    </div>


</asp:Content>
