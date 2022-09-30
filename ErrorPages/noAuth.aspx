<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="noAuth.aspx.cs" Inherits="WAD_Assignment_SF.ErrorPages.noAuth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <h1 class="col">
            Error
        </h1>
    </div>
    <div class="row">
        <div class="col">
            You are not authorizedd to access this function.
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col">
            <asp:Button class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" ID="btnreturn" runat="server" Text="Return" OnClick="btnreturn_Click" />
        </div>
    </div>
</asp:Content>
