<%@ Page Title="SAFOD | Comment List" Language="C#" AutoEventWireup="true" MasterPageFile="~/main.Master" CodeBehind="commentList.aspx.cs" Inherits="WAD_Assignment_SF.Comment.commentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/comment.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center" style="padding-left: 250px; height: 800px;">
        <div class="row">
            <h1 class="col" style="font-size:70px">
                Comment List
            </h1>
        </div>
        <div class="auto-style1" style="padding-left:50px;">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ratingID" ForeColor="Black" Width="1477px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ratingID" HeaderText="ratingID" SortExpression="ratingID" ReadOnly="True" />
                    <asp:BoundField DataField="productID" HeaderText="productID" SortExpression="productID" />
                    <asp:BoundField DataField="ratingScore" HeaderText="ratingScore" SortExpression="ratingScore" />
                    <asp:BoundField DataField="ratingComment" HeaderText="ratingComment" SortExpression="ratingComment" />
                    <asp:BoundField DataField="custID" HeaderText="custID" SortExpression="custID" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                DeleteCommand="DELETE FROM [Rating] WHERE [ratingID] = @ratingID" 
                InsertCommand="INSERT INTO [Rating] ([productID], [ratingScore], [ratingComment], [custID]) VALUES (@productID, @ratingScore, @ratingComment, @custID)" 
                UpdateCommand="UPDATE [Rating] SET [productID] = @productID, [ratingScore] = @ratingScore, [ratingComment] = @ratingComment, [custID] = @custID WHERE [ratingID] = @ratingID" 
                SelectCommand="SELECT * FROM [Rating]">
                <DeleteParameters>
                    <asp:Parameter Name="ratingID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="productID" Type="Int32" />
                    <asp:Parameter Name="ratingScore" Type="Int32" />
                    <asp:Parameter Name="ratingComment" Type="String" />
                    <asp:Parameter Name="custID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="productID" Type="Int32" />
                    <asp:Parameter Name="ratingScore" Type="Int32" />
                    <asp:Parameter Name="ratingComment" Type="String" />
                    <asp:Parameter Name="custID" Type="Int32" />
                    <asp:Parameter Name="ratingID" Type="Int32" />
                </UpdateParameters>
                

            </asp:SqlDataSource>
            <br />
            <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="CommentBtn" runat="server" Text="Rate" Font-Bold="true" OnClick="Comment_Btn" />
            &nbsp;&nbsp;
            <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-warning" ID="ReturnBtn" runat="server" Text="Return" Font-Bold="true" OnClick="Return_Btn" />
        </div>

        <br />
    </div>
</asp:Content>
