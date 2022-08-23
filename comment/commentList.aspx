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
        <br />
        <div class="row">
            <asp:Table ID="Comment1" runat="server" BorderColor="Black" BorderWidth="5px" Width="1000px">
                <asp:TableRow>
                    <asp:TableCell Font-Size="35px" Font-Bold="true">
                        <asp:Label ID="Label7" runat="server" Text="Cheah Pin Chee"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Font-Size="30px" Font-Underline="true">
                        <asp:Label ID="Label8" runat="server" Text="Rate:  5 Stars"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Font-Size="25px">
                        <asp:Label ID="Label9" runat="server" Text="This product is good!!!I love the attitude of the seller, his name is Ler Shean. He is so polite."></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <br />
        <div class="row">
            <asp:Table ID="Table2" runat="server" BorderColor="Black" BorderWidth="5px" Width="1000px">
                <asp:TableRow>
                    <asp:TableCell Font-Size="35px" Font-Bold="true">
                        <asp:Label ID="Label10" runat="server" Text="Ng Chun Shen"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Font-Size="30px" Font-Underline="true">
                        <asp:Label ID="Label11" runat="server" Text="Rate:  1 Star"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Font-Size="25px">
                        <asp:Label ID="Label12" runat="server" Text="I hate this company. The boss and the worker are rude. But the seller -- Ler Shean is good."></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <br />
        <div class="row">
            <asp:Table ID="Table3" runat="server" BorderColor="Black" BorderWidth="5px" Width="1000px">
                <asp:TableRow>
                    <asp:TableCell Font-Size="35px" Font-Bold="true">
                        <asp:Label ID="Label13" runat="server" Text="Yong King Lun"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Font-Size="30px" Font-Underline="true">
                        <asp:Label ID="Label14" runat="server" Text="Rate:  4 Stars"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Font-Size="25px">
                        <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div class="row">
            <h4 class="col">
                <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="CommentBtn" runat="server" Text="Write a Comment" Font-Bold="true" OnClick="Comment_Btn" />
                <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-warning" ID="ReturnBtn" runat="server" Text="Return" Font-Bold="true" OnClick="Return_Btn" />
            </h4>
        </div>
    </div>
</asp:Content>
