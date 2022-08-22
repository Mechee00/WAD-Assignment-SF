<%@ Page Title="SAFOD | Account" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WAD_Assignment_SF.account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- <script src="../js/account.js"></script> -->
    <link rel="stylesheet" href="../css/login.css">
    <!-- <link rel="stylesheet" href="../css/global.css"> -->
    <!-- <link rel="stylesheet" href="../Content/bootstrap.min.css"> -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center" style="padding-left: 150px">
        <!-- Right Login -->
        <div class="col-auto">
            <asp:Login ID="Login1" runat="server">
                <LayoutTemplate>
                    <!-- Title -->
                    <div class="row">
                        <h1 class="col">
                            <span class="col">
                                Sign Up
                            </span>
                        </h1>
                    </div>
                    <br>
                    <!-- Emails -->
                    <div class="row">
                        <h5 class="col">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name</asp:Label>
                        </h5>
                    </div>
                    <div class="row">
                        <h4 class="col">
                            <asp:TextBox class="col" ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-auto text-danger" ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name or Email is required." ToolTip="User Name or Email is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        </h4>
                    </div>
                    <!-- Passwords -->
                    <div class="row">
                        <h5 class="col">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password</asp:Label>
                        </h5>
                    </div>
                    <div class="row">
                        <h4 class="col">
                            <asp:TextBox class="col" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-auto text-danger" ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        </h4>
                    </div>
                    <!-- Forgot Password -->
                    <div class="row align-self-end">
                        <a href="!" class="text-muted text-s">Forgot Password?</a>
                    </div>
                    <br>
                    <br>
                    <!-- Remember Me -->
                    <div class="row">
                        <asp:CheckBox class="col" ID="RememberMe" runat="server" Text="  Remember me next time." />
                    </div>
                    <div class="row">
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                    </div>
                    <br>
                    <!-- Buttons -->
                    <div class="row p-1 btn-group-horizontal">
                        <asp:Button class="col-6 btn mx-1 font-bold text-l py-2 mx-2 btn-success" ID="btnLogin" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                        <asp:Button class="col-4 btn mx-1 font-bold text-l py-2 mx-2 btn-outline-success" ID="btnSignup" runat="server" CommandName="Signup" Text="Sign Up" ValidationGroup="Signup1" OnClientClick='url("signup.aspx")' OnClick="btnSignup_Click" />
                    </div>
                </LayoutTemplate>
            </asp:Login>
        </div>
        <!-- Center or message -->
        <div class="col-auto mx-2">
            <h5 class="row text-center"> or <br> register with</h5>
        </div>
        <!-- Left Login -->
        <div class="col-auto mx-3">
            <h4 class="row-auto py-2">
                <a href="#" class="fb btn" style="border: ;">
                    <i class="bi bi-facebook"></i> Login with Facebook
                </a>
            </h4>
            <h4 class=" row-auto py-2">
                <a href="#" class="google btn">
                    <i class="bi bi-google"></i> Login with Google+
                </a>
            </h4>
        </div>
    </div>
</asp:Content>
