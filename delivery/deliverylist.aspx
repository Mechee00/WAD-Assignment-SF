<%@ Page Title="SAFOD | Delivery List" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="deliverylist.aspx.cs" Inherits="WAD_Assignment_SF.delivery.deliverylist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/global.css" rel="stylesheet" />
    <link href="../css/delivery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title -->
        <div class="row bg align-items-center ps-5" style="padding-left:250px; padding-right:250px; height:800px;">
    <div class="row" >
        <h1 class="col">
            <span class="col">
                Delivery List
            </span>
        </h1>
    </div>
    <br />
        <div class="align-self-top">
            <!-- lists table -->
            <!-- title -->
            <asp:GridView ID="gvDelivery" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="deliveryId" DataSourceID="SqlDataSource1" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="deliveryId" HeaderText="deliveryId" ReadOnly="True" SortExpression="deliveryId" InsertVisible="False" />
                    <asp:BoundField DataField="deliveryType" HeaderText="deliveryType" SortExpression="deliveryType" />
                    <asp:BoundField DataField="deliveryStatus" HeaderText="deliveryStatus" SortExpression="deliveryStatus" />
                    <asp:BoundField DataField="orderId" HeaderText="orderId" SortExpression="orderId" />
                    
                    <asp:HyperLinkField DataNavigateUrlFields="deliveryId" DataNavigateUrlFormatString="deliverydetails.aspx?deliveryid={0}" Text="Check Details" />
                    
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [deliveryId], [deliveryType], [deliveryStatus], [orderId] FROM [Delivery] ORDER BY [deliveryId] DESC"></asp:SqlDataSource>
            <br />
            <div class="row">
                <asp:Button ID="returnbtn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Return" OnClick="returnbtn_Click" />
                &nbsp;<asp:Button ID="switch" class="col-3 btn mx-2 font-bold text-l py-2 mx-2 btn-info" runat="server" Text="Transaction List" OnClick="switch_Click" />
            </div>
        </div>
            </div>
</asp:Content>
