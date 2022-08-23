<%@ Page Title="SAFOD | Promotion" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="promotion.aspx.cs" Inherits="WAD_Assignment_SF.promotion.promotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/promotion.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center">
        <div class="row">
            <h1 class="text-warning bg-danger" style="font-size:50px; text-align:center">
                PROMOTION!!!
            </h1>
            <h3 class="text-danger" style="font-size:30px; text-align:center">
                From Now Until 24 August 2022
            </h3>
        </div>
        <div class="row">
            <div class="col">
                <h4 class="col" style="padding-left:100px;">
                    <asp:Table ID="Table1" runat="server">
                        <asp:TableRow>
                            <asp:TableCell Width="470px">
                                <asp:Image ID="Image1" runat="server" Height="250px" Width="350px" ImageUrl="~/src/img/10-Curry-Chicken-Pie.jpg" ImageAlign="Left" AlternateText="sample" BorderColor="Black" BorderStyle="Solid" />
                            </asp:TableCell>
                            <asp:TableCell Width="470px">
                                <asp:Image ID="Image4" runat="server" Height="250px" Width="350px" ImageUrl="~/src/img/1-Cheese-Stick.jpg" ImageAlign="Left" AlternateText="sample" BorderColor="Black" BorderStyle="Solid" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Image ID="Image5" runat="server" Height="250px" Width="350px" ImageUrl="~/src/img/6-Little-Pizza.jpg" ImageAlign="Left" AlternateText="sample" BorderColor="Black" BorderStyle="Solid" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Font-Size="30px" Font-Underline="true" Font-Bold="true">
                                <asp:Label ID="Label1" runat="server" Text="Curry Chicken Pie"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Font-Size="30px" Font-Underline="true" Font-Bold="true">
                                <asp:Label ID="Label2" runat="server" Text="Cheese Stick"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Font-Size="30px" Font-Underline="true" Font-Bold="true">
                                <asp:Label ID="Label4" runat="server" Text="Little Pizza"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Font-Size="15px">
                                <asp:Label ID="Label3" runat="server" Text="Price: <del>RM 6/per</del> RM 3/per (Discount 50%)"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Font-Size="15px">
                                <asp:Label ID="Label5" runat="server" Text="Price: <del>RM 4/per</del> RM 3/per (Discount 75%)"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Font-Size="15px">
                                <asp:Label ID="Label6" runat="server" Text="Price: <del>RM 8/per</del> RM 6/per (Discount 75%)"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Font-Bold="true" Font-Size="20px">
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" min="0" max="20" step="1" BackColor="#ffcc00"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell Font-Bold="true" Font-Size="20px">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" min="0" max="20" step="1" BackColor="#ffcc00"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell Font-Bold="true" Font-Size="20px">
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" min="0" max="20" step="1" BackColor="#ffcc00"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button class="col-6 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="Button1" runat="server" Text="Add to Cart" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Button class="col-6 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="Button2" runat="server" Text="Add to Cart" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Button class="col-6 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="Button3" runat="server" Text="Add to Cart" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </h4>
            </div>
        </div>
    </div>
</asp:Content>