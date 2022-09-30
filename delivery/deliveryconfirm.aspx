<%@ Page Title="Delivery Confirm" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="deliveryconfirm.aspx.cs" Inherits="WAD_Assignment_SF.delivery.deliverydetails" %>
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
        <div class="row bg-lyellow color-black">
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" CellPadding="5" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label3" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Literal ID="litName" runat="server"></asp:Literal></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Address"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label9" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Literal ID="litAddress" runat="server"></asp:Literal></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label10" runat="server" Text="Type of Deliver"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label11" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Literal ID="litType" runat="server"></asp:Literal></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
            <br />
        <div class="row">
            <asp:Button ID="confirmbtn" class="col-3 btn mx-2 font-bold text-l py-2 mx-2 btn-success" runat="server" Text="Confirm" OnClick="confirmbtn_Click" OnClientClick='return confirm("Please make sure all informations is correct so that we could send the items to you.")' />
            &nbsp;<asp:Button class="col-4 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" ID="Confirm" runat="server" Text="Change Address" OnClick="Confirm_Click"/>
&nbsp;<asp:Button ID="cancelbtn" class="col-3 btn mx-2 font-bold text-l py-2 mx-2 btn-danger" runat="server" Text="Cancel" OnClick="cancelbtn_Click" OnClientClick='return confirm("Are you sure you want to leave this page?")' />
        </div>
            </div>
    </div>
</asp:Content>
