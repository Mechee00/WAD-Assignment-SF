<%@ Page Title="SAFOD | Transaction Details" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="transactiondetails.aspx.cs" Inherits="WAD_Assignment_SF.transaction.transactiondetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False">
        <Fields>
            <asp:BoundField HeaderText="ID" />
            <asp:BoundField HeaderText="Food" />
            <asp:BoundField HeaderText="Date" />
            <asp:BoundField HeaderText="Amount" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
