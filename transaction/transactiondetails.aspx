<%@ Page Title="SAFOD | Transaction Details" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="transactiondetails.aspx.cs" Inherits="WAD_Assignment_SF.transaction.transactiondetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/transaction.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center ps-5" style="padding-left:250px; padding-right:250px; height:400px;">
            <!-- Title -->
    <div class="row">
        <h1 class="col">
            <span class="col">
                Transaction Details
            </span>
        </h1>
    </div>
    <br />
    <div class="row">
        <asp:Table class="fixed" ID="Table1" runat="server" HorizontalAlign="Center" CellPadding="5" CellSpacing="5" Width="100%">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label7" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label3" runat="server" Text="C423E7D2-A0D9-4439-9850-0358A2C0EB2F"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label8" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label6" runat="server" Text="30/08/2022"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Time"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label9" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label4" runat="server" Text="16:47"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label10" runat="server" Text="Amount"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label11" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label12" runat="server" Text="GrabFood"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label13" runat="server" Text="Payment Type"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label14" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label15" runat="server" Text="- RM 19.40"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label16" runat="server" Text="Status"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label17" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label18" runat="server" Text="Success"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label19" runat="server" Text="Order ID"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label20" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label21" runat="server" Text="87DEE2E6-E2D0-4580-AA2F-855182C76C41"></asp:Label></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <br />
    <div class="row">
        <asp:Button ID="Button1" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Return" OnClick="returnbtn_Click" />
    </div>
        </div>
</asp:Content>
