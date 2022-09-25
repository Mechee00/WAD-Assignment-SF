<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="acc_update.aspx.cs" Inherits="WAD_Assignment_SF.account.acc_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <link rel="stylesheet" href="../css/acc_update.css">
    <link rel="stylesheet" href="../css/global.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Outer Container -->
    <div class="container-fluid bg justify-content-center">
        <div class="row spacer"></div>
        <!-- Inner Container -->
        <div class="inner_container mx-auto">
            <div class="row align-items-center me-5" style="height: 180px;">
                <!-- Row 1 Input -->
                <div class="row ps-4 mx-auto justify-content-center">
                    <!-- Left Personal Details -->
                    <div class="col-5 text-xl font-bolder">
                        <h1 class="font-bolder text-xxl color-dyellow">Profile Detail</h1>

                        <br>
                        <!-- Row 1 First Name -->
                        <div class="col-5">
                            <asp:Label class="row-7" ID="lblFullName" runat="server" Text="Full Name"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtFullName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col p-0 text-danger" ID="vldtFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Your name is required." ToolTip="Name" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 2 User Name -->
                        <div class="col-5">
                            <asp:Label class="row-7" ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtUserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-auto p-0 text-danger" ID="vldtUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name is required." ToolTip="User Name" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 3 Contact -->
                        <div class="col-5">
                            <asp:Label class="row-7" ID="lblContact" runat="server" Text="Contact"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtContact" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtContact" runat="server" ControlToValidate="txtContact" ErrorMessage="Cotact Number is required." ToolTip="Contact without '-'" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 4 Email -->
                        <div class="col-5">
                            <asp:Label class="row-7" ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ToolTip="Contact without '-'" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 5 Gender -->
                        <div class="col-7">
                            Gender<br>
                            <asp:RadioButtonList class="btn-group" ID="radBtnGender" runat="server" BorderStyle="None" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="645px">
                                <asp:ListItem class="rad" Value="M">Male</asp:ListItem>
                                <asp:ListItem class="rad" Value="F">Female</asp:ListItem>
                                <asp:ListItem class="rad" Selected="True" Value="S">Secret</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <br>
                        <!-- Row 6 DoB -->
                        <div class="col">
                            <asp:Label class="row-7" ID="lblDoB" runat="server" Text="Date Of Birth"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtDoB" placeholder="dd.mm.yyyy" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtDoB" runat="server" ControlToValidate="txtDoB" ErrorMessage="Email is required." ToolTip="Contact without '-'" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <!-- Right Address Details -->
                    <div class="col-4 text-xl font-bolder">
                        <h1 class="font-bolder text-xxl color-dyellow">Address</h1>
                        <br>
                        <!-- Row 1 Unit -->
                        <div class="col-5">
                            <label for="vldUnit" class="form-label">Unit*</label>
                            <input type="text" class="form-control" id="vldUnit" value="" required>
                        </div><br>
                        <!-- Row 2 Building -->
                        <div class="col-5">
                            <label for="vldBuilding" class="form-label">Building*</label>
                            <input type="text" class="form-control" id="vldBuilding" value="" required>
                        </div><br>
                        <!-- Row 3 Street -->
                        <div class="col-5">
                            <label for="vldStreet" class="form-label">Street*</label>
                            <input type="text" class="form-control" id="vldStreet" value="" required>
                        </div><br>
                        <!-- Row 4 Postcode -->
                        <div class="col-5">
                            <label for="vldPost" class="form-label">Postcode*</label>
                            <input type="text" class="form-control" id="vldPost" value="" required>
                        </div><br>
                        <!-- Row 5 State -->
                        <div class="col-3">
                            <label for="vldState" class="form-label">State</label>
                            <select class="form-select" id="vldState" required>
                                <option selected disabled value="">-Pick a State-</option>
                                <option value="Johor">Johor</option>
                                <option value="Kedah">Kedah</option>
                                <option value="Kelantan">Kelantan</option>
                                <option value="Malacca">Malacca</option>
                                <option value="Negeri">Negeri Sembilan</option>
                                <option value="Pahang">Pahang</option>
                                <option value="Penang">Penang</option>
                                <option value="Perak">Perak</option>
                                <option value="Perlis">Perlis</option>
                                <option value="Sabah">Sabah</option>
                                <option value="Sarawak">Sarawak</option>
                                <option value="Selangor">Selangor</option>
                                <option value="Terengganu">Terengganu</option>
                            </select>
                        </div>
                    </div>
                </div>
                ww
                <!-- Row 2 Confirm buttons -->
                <div class="row g-3 justify-content-center">
                    <asp:Button class="col-auto font-bold text-xl btn btn-primary" ID="btnUpdate" runat="server" Text="Update" Height="60px" />
                    <asp:Button class="col-auto font-bold text-xl btn btn-outline-danger" ID="btnDiscard" runat="server" Text="Discard" Height="60px" />
                    <asp:Button class="col-auto font-bold text-xl btn btn-outline-danger" ID="btnLogout" runat="server" Text="Logout" Height="60px" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
