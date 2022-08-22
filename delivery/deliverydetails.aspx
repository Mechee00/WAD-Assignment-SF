<%@ Page Title="Delivery Confirm" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="deliverydetails.aspx.cs" Inherits="WAD_Assignment_SF.delivery.deliverydetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title -->
    <div class="row">
        <h1 class="col">
            <span class="col">
                Delivery Confirmation
            </span>
        </h1>
    </div>
    <br />
    <div class="row">
        <asp:Literal ID="deliverdetailslit" runat="server"></asp:Literal>
    </div>
    <br />
    <div>
        <asp:Button ID="confirmbtn" runat="server" Text="Confirm" /><asp:Button ID="cancelbtn" runat="server" Text="Cancel" OnClick="cancelbtn_Click" />
    </div>
</asp:Content>
