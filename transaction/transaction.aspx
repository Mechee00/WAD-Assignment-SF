<%@ Page Title="SAFOD | Transaction" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="WAD_Assignment_SF.transaction.transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/transaction.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title -->
        <div class="row bg align-items-center ps-5" style="padding-left:250px; padding-right:250px;">
    <div class="row" >
        <h1 class="col">
            <span class="col">
                Transaction List
            </span>
        </h1>
    </div>
    <br />
        <div>
            <!-- lists table -->
            <!-- title -->
            <asp:Table class="row align-items-center" ID="Table1" runat="server" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" Width="90%" style="background: #ffc990;">
                <asp:TableRow runat="server" Font-Size="XX-Large" Width="100%" style="background: #f5a856;">
                    <asp:TableCell runat="server" Width="25%">
                        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Width="25%">
                        <asp:Label ID="Label2" runat="server" Text="Amount"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Width="25%">
                        <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Width="30%">
                        <asp:Label ID="Label4" runat="server" Text="Check Details Here"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label5" runat="server" Text="30/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label6" runat="server" Text="-RM 19.40"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label7" runat="server" Text="Success"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/transaction/transactiondetails.aspx">Check Details</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label8" runat="server" Text="30/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label9" runat="server" Text="-RM 23.80"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label10" runat="server" Text="Success"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/transaction/transactiondetails.aspx">Check Details</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label11" runat="server" Text="31/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label12" runat="server" Text="-RM 15.30"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label13" runat="server" Text="Pending"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/transaction/transactiondetails.aspx">Check Details</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <div class="row">
                <asp:Button ID="returnbtn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Return" />
            </div>
        </div>
            </div>
</asp:Content>
