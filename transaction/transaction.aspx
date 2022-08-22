<%@ Page Title="SAFOD | Transaction" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="WAD_Assignment_SF.transaction.transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title -->
    <div class="row">
        <h1 class="col">
            <span class="col">
                Transactions
            </span>
        </h1>
    </div>
    <br />
    <!-- Transaction Details-->
    <asp:GridView ID="TransactionGrid" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" CellPadding="3" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField HeaderText="Transaction ID" />
            <asp:BoundField HeaderText="Transaction Type" />
            <asp:BoundField HeaderText="Transaction Amount" />
            <asp:HyperLinkField Text="Check Transaction" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="transactiondetails.aspx?Id={0}" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>
