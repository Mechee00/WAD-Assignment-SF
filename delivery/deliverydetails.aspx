<%@ Page Title="Delivery Confirm" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="deliverydetails.aspx.cs" Inherits="WAD_Assignment_SF.delivery.deliverydetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/delivery.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center ps-5" style="height:500px;">
        <div class="col-auto" style="padding-left:100px;">
        <!-- Title -->
        <div class="row">
            <h1 class="col">
                <span class="col">
                    Delivery Confirmation
                </span>
            </h1>
        </div>
        <br />
        <div class="row bg-lyellow color-white">
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" CellPadding="5" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label13" runat="server" Text="Delivery ID"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label15" runat="server" Text="0EA029FD-531D-4BD8-81FD-369078EDF966"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label7" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label3" runat="server" Text="Lim Wee Bee"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label8" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label6" runat="server" Text="+6016-4783725"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Address"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label9" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label4" runat="server" Text="13, Jalan Taman Greenview 1, Taman Greenview, 11600 George Town, Pulau Pinang"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label10" runat="server" Text="Type of Deliver"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label11" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label12" runat="server" Text="Standard Delivery"></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
            <br />
        <div class="row">
            <asp:Button ID="confirmbtn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-primary" runat="server" Text="Confirm"  OnClientClick='return confirm("Please make sure your address is correct before sending")' />
            <asp:Button ID="cancelbtn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-danger" runat="server" Text="Cancel" OnClick="cancelbtn_Click" />
        </div>
            </div>
    </div>
</asp:Content>
