<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WAD_Assignment_SF.transaction.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/payment.css" rel="stylesheet" />
    <link href="../css/global.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center" style="height:750px;">
        <div class="col-auto container bg-white">
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
                    <asp:Label ID="cardlbl" runat="server" AssociatedControlID="cardtb" Text="Card Number :"></asp:Label>
                </h5>
            </div>
            <div class="row">
                <h4 class="col">
                    <asp:TextBox class="col" ID="cardtb" runat="server" Width="530px"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="CardRequired" runat="server" ErrorMessage="Card Number is required." ToolTip="Card Number is required." ValidationGroup="Payment" ControlToValidate="cardtb">*</asp:RequiredFieldValidator>
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
                    <asp:TextBox class="col" ID="expiretb" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="ExpiryDateRequired" runat="server" ErrorMessage="Expiry Date is required." ToolTip="Expiry Date is required." ValidationGroup="Payment" ControlToValidate="expiretb">*</asp:RequiredFieldValidator>
                </h4>
                <h4 class="col-auto mx-auto">
                    <asp:TextBox class="col" ID="cvctb" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="CVCRequired" runat="server" ErrorMessage="CVC is required." ToolTip="CVC is required." ValidationGroup="Payment" ControlToValidate="cvctb">*</asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator class="col-auto text-danger" ID="HolderRequired" runat="server" ErrorMessage="Cardholder Name is required." ToolTip="Cardholder Name is required." ValidationGroup="Payment" ControlToValidate="holdertb">*</asp:RequiredFieldValidator>
                </h4>
            </div>
            <!-- Confirm Payment Button -->
            <br />
            <div class ="row">
                <h3 class ="col">
                    <asp:Button ID="confirmbtn" class="col-3 btn mx-auto font-bold text-l py-2 mx-2 btn-primary" runat="server" Text="Confirm"/>
                    <asp:Button ID="cancelbtn" class="col-3 btn mx-auto font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Cancel"  OnClientClick='return confirm("Are you sure you want to quit payment?")' />
                </h3>
            </div>
        </div>
    </div>
</asp:Content>
