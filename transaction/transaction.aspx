<%@ Page Title="SAFOD | Transaction" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="WAD_Assignment_SF.transaction.transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/transaction.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title -->
        <div class="row bg align-items-center ps-5" style="padding-left:250px; padding-right:250px; height:600px;">
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
            <asp:GridView ID="gvTransactions" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="transId" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" RowStyle-HorizontalAlign="Center" HorizontalAlign="Center" CssClass="auto-style3" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <Columns> 
                    <asp:BoundField DataField="transId" HeaderText="Transaction ID" ReadOnly="True" SortExpression="transId" />
                    <asp:BoundField DataField="transAmount" HeaderText="Transaction Amount" SortExpression="transAmount" HeaderStyle-HorizontalAlign="Center" >
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="transStatus" HeaderText="Transaction Status" SortExpression="transStatus" />
                    <asp:HyperLinkField DataNavigateUrlFields="transID" DataNavigateUrlFormatString="transactiondetails.aspx?transid={0}" Text="Check Details" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [transId], [transAmount], [transStatus] FROM [Transaction] ORDER BY [transId] DESC"></asp:SqlDataSource>
            <br />
            <div class="row">
                <asp:Button ID="returnbtn" class="col-2 btn mx-2 font-bold text-l py-2 btn-warning" runat="server" Text="Return" OnClick="returnbtn_Click" />
            &nbsp;
                <asp:Button ID="Button1" class="col-3 btn mx-2 font-bold text-l py-2 btn-info" runat="server" Text="Delivery List" OnClick="Button1_Click" />
            </div>
        </div>
</asp:Content>
