<%@ Page Title="SAFOD | Delivery Address" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="delivery.aspx.cs" Inherits="WAD_Assignment_SF.delivery.delivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/delivery.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center ps-5">
        <div class="col-auto" style="padding-left: 700px; padding-right: 50px;">
            <div class="bg-lgreen">
            <!-- Title -->
            <div class="row color-dgreen">
                <h1 class="col" style="font-size:70px">
                    <span class="col">
                        Delivery Form
                    </span>
                </h1>
            </div>
            <br />
            <!-- Unit Number -->
            <div style="padding-left: 30px;">
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="unitlbl" runat="server" AssociatedControlID="unittb" Text="Unit Number :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="unittb" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="UnitRequired" runat="server" ErrorMessage="Unit Number is required." ToolTip="Unit Number is required." ValidationGroup="Delivery" ControlToValidate="unittb">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- Building Name -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="buildinglbl" runat="server" AssociatedControlID="buildingtb" Text="Building Name : (OPTIONAL)"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="buildingtb" runat="server" Text=""></asp:TextBox>
                </h4>
            </div>
            <!-- Street -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="streetlbl" runat="server" AssociatedControlID="streettb" Text="Street :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="streettb" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="StreetRequired" runat="server" ErrorMessage="Street is required." ToolTip="Street is required." ValidationGroup="Delivery" ControlToValidate="streettb">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- Postal Code -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="PostalCodeLabel" runat="server" AssociatedControlID="PostalCodeTB" Text="Postal Code :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="PostalCodeTB" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="PostalCodeRequired" runat="server" ErrorMessage="Postal Code is required." ToolTip="Postal Code is required." ValidationGroup="Delivery" ControlToValidate="PostalCodeTB">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator class="col-auto text-danger" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Postal Code.(5 digit number only)" ControlToValidate="PostalCodeTB" ValidationGroup="Delivery" Display="Dynamic" ToolTip="Invalid Postal Code Format." ValidationExpression="\d{5}">*</asp:RegularExpressionValidator>
                </h4>
            </div>
            <!-- City -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="CityLabel" runat="server" AssociatedControlID="CityTB" Text="City :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="CityTB" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="CityRequired" runat="server" ErrorMessage="City is required." ToolTip="City is required." ValidationGroup="Delivery" ControlToValidate="CityTB">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- State -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="StateLabel" runat="server" AssociatedControlID="StateTB" Text="State :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="StateTB" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="StateRequired" runat="server" ErrorMessage="State is required." ToolTip="State is required." ValidationGroup="Delivery" ControlToValidate="StateTB">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <br />
            <!-- Confirm Address Button -->
            <div class ="row justify-content-end">
                <h3 class ="col">
                    <asp:Button ID="confirmbtn" class="col-5 btn mx-auto font-bold text-l py-2 mx-2 btn-success" runat="server" Text="Confirm Address" OnClick="confirmbtn_Click" ValidationGroup="Delivery" />
                    <asp:Button ID="cancelbtn" class="col-3 btn mx-auto font-bold text-l py-2 mx-2 btn-danger" runat="server" Text="Cancel" OnClick="cancelbtn_Click" OnClientClick='return confirm("Are you sure you want to leave this page?")' />
                </h3>
            </div>
                <br />
                <div class="row">
                <h6 class="col">
                    <asp:ValidationSummary class="col-auto text-danger" ID="ValidationSummary1" runat="server" ValidationGroup="Delivery" />
                    </h6>
            </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
