<%@ Page Title="SAFOD | Delivery" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="delivery.aspx.cs" Inherits="WAD_Assignment_SF.delivery.delivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/delivery.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center ps-5">
        <div class="col-auto" style="padding-left: 825px; padding-right: 50px;">
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
                    <asp:Label ID="buildinglbl" runat="server" AssociatedControlID="buildingtb" Text="Building Name :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="buildingtb" runat="server" Text="(Optional)"></asp:TextBox>
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
                    <asp:Label ID="StateLabel" runat="server" AssociatedControlID="StateTB" Text="Postal Code :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="StateTB" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="StateRequired" runat="server" ErrorMessage="State is required." ToolTip="State is required." ValidationGroup="Delivery" ControlToValidate="StateTB">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- Ways Of Deliver -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="DeliveryTypeLabel" runat="server" AssociatedControlID="DeliveryTypeRBL" Text="How would you like to deliver your food?"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:RadioButtonList ID="DeliveryTypeRBL" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem>Standard Delivery (Free)</asp:ListItem>
                        <asp:ListItem>Express Delivery (RM3.00)</asp:ListItem>
                        <asp:ListItem>More Protection Delivery (RM5.00)</asp:ListItem>
                        <asp:ListItem>More Protection Express Delivery (RM10.00)</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Delivery Type is required." ToolTip="Delivery Type is required." ValidationGroup="Delivery" ControlToValidate="DeliveryTypeRBL">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- Confirm Address Button -->
            <div class ="row">
                <h3 class ="col">
                    <asp:Button ID="confirmbtn" class="col-5 btn mx-auto font-bold text-l py-2 mx-2 btn-primary" runat="server" Text="Confirm Address" OnClick="confirmbtn_Click" />
                    <asp:Button ID="cancelbtn" class="col-3 btn mx-auto font-bold text-l py-2 mx-2 btn-danger" runat="server" Text="Cancel" OnClick="cancelbtn_Click" OnClientClick='return confirm("Are you sure you want to leave this page?")' />
                </h3>
            </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
