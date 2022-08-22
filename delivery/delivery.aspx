<%@ Page Title="SAFOD | Delivery" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="delivery.aspx.cs" Inherits="WAD_Assignment_SF.delivery.delivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/delivery.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center ps-5">
        <div class="col-auto container">
            <!-- Title -->
            <div class="row color-dgreen">
                <h1 class="col">
                    <span class="col">
                        Delivery Form
                    </span>
                </h1>
            </div>
            <br />
            <!-- Address -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="AddressTB" Text="Address :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="AddressTB" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="AddressRequired" runat="server" ErrorMessage="Address is required." ToolTip="Address is required." ValidationGroup="Delivery" ControlToValidate="AddressTB">*</asp:RequiredFieldValidator>
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
                    <asp:RadioButtonList ID="DeliveryTypeRBL" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>GrabFood</asp:ListItem>
                        <asp:ListItem>FoodPanda</asp:ListItem>
                        <asp:ListItem>ShopeeFood</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Delivery Type is required." ToolTip="Delivery Type is required." ValidationGroup="Delivery" ControlToValidate="DeliveryTypeRBL">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- Confirm Address Button -->
            <div>
                <asp:Button ID="confirmbtn" runat="server" Text="Confirm Address" OnClick="confirmbtn_Click" />
                <asp:Button ID="cancelbtn" runat="server" Text="Cancel" OnClick="cancelbtn_Click" />
            </div>
        </div>
    </div>
</asp:Content>
