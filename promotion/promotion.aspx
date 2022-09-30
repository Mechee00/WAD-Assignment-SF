<%@ Page Title="SAFOD | Promotion" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="promotion.aspx.cs" Inherits="WAD_Assignment_SF.promotion.promotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/promotion.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center">
        <div class="row">
            <h1 class="text-warning bg-danger" style="font-size:50px; text-align:center">
                PROMOTION!!!
            </h1>
            <h3 class="text-danger" style="font-size:30px; text-align:center">
                PROMOTIONS Information List
            </h3>
        </div>
        <div class="auto-style1" style="padding-left:200px;">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" AllowSorting="True" DataKeyNames="promoId" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Width="1541px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="promoId" HeaderText="Promotion ID" SortExpression="promoId" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="promoTitle" HeaderText="Promotion Title" SortExpression="promoTitle" />
                    <asp:BoundField DataField="promoDescription" HeaderText="Promotion Description" SortExpression="promoDescription" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                DeleteCommand="DELETE FROM [Promotion] WHERE [promoId] = @promoId" 
                InsertCommand="INSERT INTO [Promotion] ([promoTitle], [promoDescription]) VALUES (@promoTitle, @promoDescription)" 
                UpdateCommand="UPDATE [Promotion] SET [promoTitle] = @promoTitle, [promoDescription] = @promoDescription WHERE [promoId] = @promoId" 
                SelectCommand="SELECT * FROM [Promotion]">
                <DeleteParameters>
                    <asp:Parameter Name="promoId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="promoTitle" Type="String" />
                    <asp:Parameter Name="promoDescription" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="promoTitle" Type="String" />
                    <asp:Parameter Name="promoDescription" Type="String" />
                    <asp:Parameter Name="promoId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-danger" ID="return" runat="server" Text="Home" OnClick="click_return" />
            &nbsp;<asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="addPromotion" runat="server" Text="Add Promotion" OnClick="click_addPromotion" />
        </div>
    </div>
</asp:Content>