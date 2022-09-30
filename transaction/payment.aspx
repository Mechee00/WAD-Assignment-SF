<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WAD_Assignment_SF.transaction.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/payment.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center" style="height:800px;">
        <div class="col-auto container bg-white round">
            <!-- Title -->
            <div class="row color-dgreen">
                <h1 class="col" style="font-size: 80px;">
                    <span class="col">
                        Payment Form
                    </span>
                </h1>
            </div>
            <br />
            <!-- Accepted Payment Method Image -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="methodlbl" runat="server" Text="We Accept :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <img src="../src/img/paymentmethod.png" style="height:75px; width:400px;" />
            </div>
            <!-- Card Number -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="cardlbl" runat="server" Text="Card Number :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="txtCard" runat="server" Width="530px" placeholder="XXXXXXXXXXXXXXXX"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="CardRequired" runat="server" ErrorMessage="Card Number is required." ToolTip="Card Number is required." ValidationGroup="Payment" ViewStateMode="Inherit" Display="Dynamic" ControlToValidate="txtCard">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator class="col-auto text-danger" ID="InvalidCard" runat="server" ErrorMessage="Invalid Card Number.(16 digit number only)" ControlToValidate="txtCard" ValidationExpression="\d{16}" Display="Dynamic" ValidationGroup="Payment" ToolTip="Invalid Card Number Format (should be 16 digit)">*</asp:RegularExpressionValidator>
                </h4>
            </div>
            <!-- Expiry Date and CVC -->
            <div class="row color-dgreen">
                <h5 class="col-auto">
                    <asp:Label ID="expirelbl" runat="server" AssociatedControlID="expiretb" Text="Expiry Date :"></asp:Label>
                </h5>
                <h5 class="col-auto mx-auto">
                    <asp:Label ID="cvclbl" runat="server" AssociatedControlID="cvctb" Text="CVC :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col-auto">
                    <asp:TextBox class="col" ID="expiretb" runat="server" placeholder="MM/YY"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="ExpiryDateRequired" runat="server" ErrorMessage="Expiry Date is required." ToolTip="Expiry Date is required." ValidationGroup="Payment" ControlToValidate="expiretb" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator class="col-auto text-danger" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Expiry Date.(MM/YY)" ControlToValidate="expiretb" ValidationGroup="Payment" ValidationExpression="^(0[1-9]|1[0-2])/\d{2}$" Display="Dynamic" ToolTip="Invalid Expiry Date Format(/ also required)">*</asp:RegularExpressionValidator>
                </h4>
                <h4 class="col-auto ">
                    <asp:TextBox class="col" ID="cvctb" runat="server" Width="210px" placeholder="XXX"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="CVCRequired" runat="server" ErrorMessage="CVC is required." ToolTip="CVC is required." ValidationGroup="Payment" ControlToValidate="cvctb" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator class="col-auto text-danger" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid CVC. (3 digit number only)" ControlToValidate="cvctb" ValidationExpression="\d{3}" Display="Dynamic" ValidationGroup="Payment" ToolTip="Invalid CVC format.">*</asp:RegularExpressionValidator>
                </h4>
            </div>
            <!-- Cardholder Name -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="holderlbl" runat="server" AssociatedControlID="holdertb" Text="Cardholder Name :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="holdertb" runat="server" Width="530px"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="HolderRequired" runat="server" ErrorMessage="Cardholder Name is required." ToolTip="Cardholder Name is required." ValidationGroup="Payment" ControlToValidate="holdertb" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator class="col-auto text-danger" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Name (Should not contain any number)" ControlToValidate="holdertb" ValidationGroup="Payment" ValidationExpression="\D*" Display="Dynamic" ToolTip="Invalid Name Format">*</asp:RegularExpressionValidator>
                </h4>
            </div>
            <!-- Type of delivery -->
            <div class="row color-dgreen">
                <h5 class="col">
                    <asp:Label ID="DeliveryTypeLabel" runat="server" AssociatedControlID="DeliveryTypeRBL" Text="How would you like to deliver your food?"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:RadioButtonList ID="DeliveryTypeRBL" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Text="Standard Delivery (Free)" Value="Standard Delivery"></asp:ListItem>
                        <asp:ListItem Text="Express Delivery (+RM3.00)" Value="Express Delivery"></asp:ListItem>
                        <asp:ListItem Text="More Protection Delivery (+RM5.00)" Value="More Protection Delivery"></asp:ListItem>
                        <asp:ListItem Text="More Protection Express Delivery (+RM10.00)" Value="More Protection Express Delivery"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Delivery Type is required." ToolTip="Delivery Type is required." ValidationGroup="Payment" ControlToValidate="DeliveryTypeRBL">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- Confirm Payment Button -->
            <br />
            <div class="row">
                <h3 class="col">
                    <asp:Button ID="confirmbtn" class="col-3 btn mx-auto font-bold text-l py-2 mx-2 btn-success" runat="server" Text="Confirm" OnClick="confirmbtn_Click" ValidationGroup="Payment" OnClientClick='return confirm("Please confirm that your credit card details are correct so that your transaction can be proceeded.")' />
                    <asp:Button ID="cancelbtn" class="col-3 btn mx-auto font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Cancel" OnClick="cancelbtn_Click" OnClientClick='return confirm("Are you sure you want to quit payment?")' CausesValidation="False" CommandName="Yes" />
                </h3>
            </div>
            <br />
            <div class="row">
                <h6 class="col">
                    <asp:ValidationSummary class="col-auto text-danger" ID="ValidationSummary1" runat="server" ValidationGroup="Payment" />
            </div>
        </div>
    </div>
</asp:Content>
