<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="forget_password.aspx.cs" Inherits="WAD_Assignment_SF.account.forget_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frogotPass.css">
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg">
        <div class="row inner_container">
            <div class="row spacer"></div>
            <div class="row justify-content-center">
                <!-- Col 1 -->
                <div class="col-auto card shadow-lg login_card">
                    <div class="card-body ps-5">
                        <!-- Title -->
                        <br>
                        <br>
                        <br>
                        <h1 class="row mx-1">
                            <b>Password Recorvery</b>
                        </h1>
                        <br>
                        <br>
                        <!-- Emails -->
                        <h4 class="row-cols-auto mx-2">
                            <asp:TextBox class="col-auto" ID="txtEmail" placeholder="Email" runat="server" Height="50px" Width="480px" TextMode="Email"></asp:TextBox>
                        </h4>
                        <h4 class="row-cols-auto mx-2">
                            <asp:RequiredFieldValidator class="col-auto p-0 text-danger" ID="EmailRequired" runat="server" ControlToValidate="txtEmail" ErrorMessage="User Name or Email is required." ToolTip="Email is required." ValidationGroup="forgotPass" Font-Bold="True">*Email is required</asp:RequiredFieldValidator>
                        </h4>
                        <h4 class="row-cols-auto mx-2">
                            <asp:RegularExpressionValidator class="col-auto p-0 text-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ValidationGroup="forgotPass" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ErrorMessage="Invalid Email" Font-Bold="True">*Invalid email format.</asp:RegularExpressionValidator>
                        </h4>
                        <br>
                        <h4 class="row-cols-auto mx-2">
                            <asp:Label Font-Bold="True" class="row" ID="lblSuccessMessage" runat="server" Text=""></asp:Label>
                        </h4>
                        <br />
                        <!-- Buttons -->
                        <div class="row mx-2 btn-group-horizontal justify-content-center">
                            <asp:Button class="col-6 btn mx-2 btn-success" ID="btnGetPass" runat="server" CommandName="getPass" Text="Get password" ValidationGroup="forgotPass" Font-Size="Large" OnClick="btnGetPass_Click" />
                        </div>
                        <div class="row mx-2 text-xl-center"></div>
                        <br>
                        <br>
                    </div>
                </div>
            </div>
            <div class="row spacer"></div>
        </div>
    </div>
</asp:Content>
