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
                    <asp:Literal ID="litID" runat="server"></asp:Literal></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label5" runat="server" Text="Date & Time"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label8" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Literal ID="litDate" runat="server"></asp:Literal></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label10" runat="server" Text="Amount"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label11" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Literal ID="litAmt" runat="server"></asp:Literal></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label13" runat="server" Text="Payment Type"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label14" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Literal ID="litPayment" runat="server"></asp:Literal></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label16" runat="server" Text="Status"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label17" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Literal ID="litStatus" runat="server"></asp:Literal></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label19" runat="server" Text="Order ID"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label20" runat="server" Text=":"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Literal ID="litOrder" runat="server"></asp:Literal></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <br />
    <div class="row">
        <asp:Button ID="btnReturn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Return" OnClick="returnbtn_Click" /> 
        &nbsp;<asp:Button ID="btnConfirm" class="col-3 btn mx-2 font-bold text-l py-2 mx-2 btn-success" runat="server" Text="Confirm Payment" OnClick="btnConfirm_Click" OnClientClick='return confirm("Are you sure you receive the payment?")' />
        &nbsp;<asp:Button class="col-3 btn mx-2 font-bold text-l py-2 mx-2 btn-danger" ID="btnFail" runat="server" Text="Fail Payment" OnClick="btnFail_Click" OnClientClick='return confirm("Are you sure you want to fail this payment?")'/>
&nbsp;<asp:Button ID="btnDelete" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-danger" runat="server" Text="Delete" OnClick="btnDelete_Click" OnClientClick='return confirm("Are you sure you want to delete this transaction?")' />
    </div>
        </div>
</asp:Content>
