<%@ Page Title="Transaction" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="WAD_Assignment_SF.transaction.transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
</asp:Content>
