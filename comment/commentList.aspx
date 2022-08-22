<%@ Page Title="SAFOD | Comment List" Language="C#" AutoEventWireup="true" MasterPageFile="~/main.Master" CodeBehind="commentList.aspx.cs" Inherits="WAD_Assignment_SF.Comment.commentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/comment.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center" style="padding-left: 250px">
        <div class="row">
            <h1 class="col">
                Comment List
            </h1>
        </div>
        <br />
        <div class="row">
            <h4 class="col">
                <asp:Table ID="Table1" runat="server" BorderColor="Black" BorderWidth="5px" CellPadding="10" CellSpacing="10">
                    <asp:TableRow>
                        <asp:TableCell Width="200px" BorderStyle="Solid" BorderWidth="5px">
                            <asp:Label ID="Label4" runat="server" Text="Customer Name"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell Width="100px" BorderStyle="Solid" BorderWidth="5px">
                            <asp:Label ID="Label5" runat="server" Text="Rating"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell Width="500px" BorderStyle="Solid" BorderWidth="5px">
                            <asp:Label ID="Label6" runat="server" Text="Comment"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BorderStyle="Solid" BorderWidth="5px">
                            <asp:Label ID="Label1" runat="server" Text="Cheah Pin Chee"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell BorderStyle="Solid" BorderWidth="5px">
                            <asp:Label ID="Label2" runat="server" Text="5 stars"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell BorderStyle="Solid" BorderWidth="5px">
                            <asp:Label ID="Label3" runat="server" Text="This product is very GOOD!!!!" BorderColor="Black"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </h4>
        </div>
    </div>
    


</asp:Content>
