<%@ Page Title="SAFOD | Comment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="comment.aspx.cs" Inherits="WAD_Assignment_SF.comment.comment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/comment.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center" style="padding-left: 350px">
        <div class="row" style="padding-top: 50px">
            <h1 class="col" style="font-size:60px">
                <span class="col">
                    Leave a Comment
                </span>
            </h1>
        </div>
        <br />
        <div class="row">
            <h4 class="col" style="font-size:30px;">
                <asp:Label ID="Label2" runat="server" Text="Rating"></asp:Label>
            </h4>
        </div>
        <div class="row">
            <h4 class="col">
                <asp:RadioButtonList ID="Rating" runat="server" CellPadding="10" CellSpacing="5" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">1 star</asp:ListItem>
                <asp:ListItem Value="2">2 stars</asp:ListItem>
                <asp:ListItem Value="3">3 stars</asp:ListItem>
                <asp:ListItem Value="4">4 stars</asp:ListItem>
                <asp:ListItem Value="5">5 stars</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator class="col-auto text-danger" ID="RatingRequired" runat="server" ControlToValidate="Rating" ErrorMessage="Please rate." ToolTip="Please rate." ValidationGroup="rate">*</asp:RequiredFieldValidator>
            </h4>
        </div>
        <br />
        <div class="row">
            <h4 class="col" style="font-size:30px;">
                <asp:Label ID="Label1" runat="server" Text="Comment"></asp:Label>
            </h4>
        </div>
        <br />
        <div class="row">
            <h6 class="col">
                <asp:TextBox ID="TextBox1" runat="server" Width="700px" Height="150px" TextMode="MultiLine" style="resize:none; background-color:antiquewhite"></asp:TextBox>
            </h6>
        </div>
        <br />
        <div class="row">
            <h4 class="col">
                <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-warning" ID="cancelBtn" runat="server" Text="Cancel" OnClick="Cancel_Btn" />
                <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="PostBtn" runat="server" Text="Post Comment" OnClick="Post_Btn" />
            </h4>
        </div>
    </div>
    
</asp:Content>
