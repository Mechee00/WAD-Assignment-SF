<%@ Page Title="SAFOD | Account" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WAD_Assignment_SF.account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/login.css">

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid bg justify-content-center">
        <div class="inner_container mx-auto">
            <div class="row spacer"></div>
            <div class="row align-items-center mx-5">
                <!-- Col 1 -->
                <div class="col-auto card shadow-lg login_card">
                    <div class="card-body ps-5">
                        <!-- Title -->
                        <h1 class="row mx-1">
                            <b>Welcome Back!</b>
                        </h1>

                        <br>
                        <!-- Emails -->
                        <h4 class="row mx-2">
                            <asp:TextBox class="col-auto" ID="txtEmail" placeholder="Email" runat="server" Height="50px" Width="480px" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col p-0 text-danger" ID="EmailRequired" runat="server" ControlToValidate="txtEmail" ErrorMessage="User Name or Email is required." ToolTip="User Name or Email is required." ValidationGroup="Login1" Font-Bold="True">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator class="col p-0 text-danger" ID="regexEmailValidator" runat="server" ControlToValidate="txtEmail" ValidationGroup="Login1" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ErrorMessage="Invalid Email">*</asp:RegularExpressionValidator>
                        </h4>
                        <br>
                        <!-- Passwords -->
                        <h4 class="row mx-2">
                            <asp:TextBox class="col-auto" ID="txtPwd" placeholder="Password" runat="server" Height="50px" Width="480px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col text-danger" ID="PasswordRequired" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </h4>

                        <!-- Forgot Password -->
                        <asp:HyperLink ID="HyperLink1" class="row mx-2 text-muted text-lg-end" runat="server" NavigateUrl="~/account/forget_password.aspx">Forgot Password?</asp:HyperLink>
                        &nbsp;

                        <asp:Label class="lblInvalidAuth" ID="lblInvalidAuth" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Login1" Font-Bold="True" Font-Size="Large" />
                        <br>
                        <!-- Remember Me -->
                        <asp:CheckBox class="mx-2" ID="chkBoxRememberMe" runat="server" Text="Remember me next time." Font-Size="Medium" Width="472px" />

                        <br />
                        <br />
                        <!-- Buttons -->
                        <div class="row btn-group-horizontal">
                            <b>
                                <asp:Button class="col-6 btn mx-2 btn-success" ID="btnLogin" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" Font-Size="Large" OnClick="btnLogin_Click1" />
                                <asp:Button class="col-4 btn mx-2 btn-outline-success" ID="btnSignup" runat="server" CommandName="Signup" Text="Sign Up" ValidationGroup="Signup1" OnClientClick='url("signup.aspx")' OnClick="btnSignup_Click" Font-Size="Large" />
                            </b>
                        </div>

                        <b class="row mt-5 mb-2 text-center">
                            <h4> or login with</h4>
                        </b>
                        <hr class="row" />
                        <h2 class="row-auto mt-4 py-2 text-center">
                            <a href="#" class="fb btn">
                                <i class="bi bi-facebook"></i> Login with Facebook
                            </a>
                        </h2>
                        <h2 class=" row-auto py-2 text-center ">
                            <a href="#" class="google btn">
                                <i class="bi bi-google"></i> Login with Google+
                            </a>
                        </h2>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
