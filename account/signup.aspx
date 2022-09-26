<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WAD_Assignment_SF.account.signup" %>
<%@ Register Src="~/account/profile_field.ascx" TagPrefix="uc1" TagName="profile_field" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/signup.css">
    <link rel="stylesheet" href="../css/global.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg justify-content-center">
        <div class="row spacer"></div>
        <!-- Inner Container -->
        <div class="inner_container mx-auto">
            <div class="row align-items-center me-5">
                <!-- Row 1 Input -->
                <uc1:profile_field runat="server" id="profile_field" />
                <!-- Row 2 buttons -->
                <div class="row justify-content-center">
                    <asp:Button class="col-3 m-3 font-bold text-xl btn btn-primary" ID="btnSignup" runat="server" ValidationGroup="updateProfile" Text="Singup" Height="60px" OnClick="btnSignup_Click" />
                    <asp:Button class="col-2 m-3 font-bold text-xl btn btn-danger" ID="btnCancel" runat="server" Text="Cancel" Height="60px" CausesValidation="False" OnClick="btnCancel_Click" />
                </div>
            </div>
            <div class="row spacer"></div>
        </div>
    </div>
</asp:Content>
