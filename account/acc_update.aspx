<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="acc_update.aspx.cs" Inherits="WAD_Assignment_SF.account.acc_update" %>
<%@ Register Src="~/account/profile_field.ascx" TagPrefix="uc1" TagName="profile_field" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/acc_update.css">
    <link rel="stylesheet" href="../css/global.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Outer Container -->
    <div class="container-fluid bg justify-content-center">
        <div class="row spacer"></div>

        <!-- Inner Container -->
        <div class="inner_container mx-auto">
            <div class="row align-items-center me-5">
                <!-- Row 1 Input -->
                <uc1:profile_field runat="server" id="profile_field" />

                <!-- Row 2 buttons -->
                <div class="row justify-content-center">
                    <asp:Button class="col-3 m-3 font-bold text-xl btn btn-primary" ID="btnUpdate" runat="server" ValidationGroup="updateProfile" Text="Update" Height="60px" OnClick="btnUpdate_Click" />
                    <asp:Button class="col-2 m-3 font-bold text-xl btn btn-outline-danger" ID="btnLogout" runat="server" Text="Logout" Height="60px" OnClick="btnLogout_Click" CausesValidation="False" />
                    <asp:Button class="col-2 m-3 font-bold text-xl btn btn-danger" ID="btnDelAcc" runat="server" Text="Delete Account" Height="60px" CausesValidation="False" OnClick="btnDelAcc_Click" />
                </div>
            </div>
            <div class="row spacer"></div>
        </div>
    </div>
</asp:Content>
