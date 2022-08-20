<%@ Page Title="SAFOD | Account" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WAD_Assignment_SF.account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- <script src="../js/account.js"></script> -->
    <link rel="stylesheet" href="../css/account.css">
    <link rel="stylesheet" href="../Content/bootstrap.min.css">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg justify-content-start ps-4">
        <!-- <div class="col-auto h-auto justify-content-center m-auto pt" style="height: 840px;"> -->
        < class="col h-auto m-auto ps-5">
            <asp:Login ID="Login1" runat="server">
                <LayoutTemplate>

                    <asp:Label class="row" ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name or
                        Email:</asp:Label>
                    <div class="row">
                        <asp:TextBox class="col-auto" ID="UserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator class="col-auto text-danger" ID="UserNameRequired" runat="server"
                            ControlToValidate="UserName" ErrorMessage="User Name or Email is required."
                            ToolTip="User Name or Email is required." ValidationGroup="Login1">*
                        </asp:RequiredFieldValidator>
                    </div>

                    <asp:Label class="row" ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:
                    </asp:Label>
                    <div class="row">
                        <asp:TextBox class="col-auto" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator class="col-auto text-danger" ID="PasswordRequired" runat="server"
                            ControlToValidate="Password" ErrorMessage="Password is required."
                            ToolTip="Password is required." ValidationGroup="Login1">*
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="row">
                        <asp:CheckBox class="col" ID="RememberMe" runat="server" Text="Remember me next time." />
                    </div>
                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False">Test something here
                    </asp:Literal>

                    <asp:Button class="row btn btn-outline-dark" ID="LoginButton" runat="server" CommandName="Login"
                        Text="Log In" ValidationGroup="Login1" />
                </LayoutTemplate>
            </asp:Login>

    </div>
    </div>
</asp:Content>
