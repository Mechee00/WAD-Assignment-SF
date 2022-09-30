<%@ Page Title="SAFOD | Delivery Details" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="deliverydetails2.aspx.cs" Inherits="WAD_Assignment_SF.delivery.deliverydetails2" %>
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
            <asp:Table class="fixed" ID="Table1" runat="server" HorizontalAlign="Center" CellPadding="5" CellSpacing="5" Width="100%">

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label7" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Literal ID="litId" runat="server"></asp:Literal></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label5" runat="server" Text="Date / Time"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label8" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Literal ID="litDate" runat="server"></asp:Literal>&nbsp;
                        <asp:Literal ID="litDateEs" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label9" runat="server" Text=":"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Literal ID="litStatus" runat="server"></asp:Literal></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label4" runat="server" Text=":"></asp:Label></asp:TableCell>
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
            <asp:Button ID="returnbtn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Return" OnClick="returnbtn_Click" />
            &nbsp;
            <asp:Button ID="deletebtn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-danger" runat="server" Text="Delete" OnClientClick='return confirm("Are you sure you want to delete this delivery record?")' OnClick="deletebtn_Click" />
        </div>
            </div>
    </div>
</asp:Content>
