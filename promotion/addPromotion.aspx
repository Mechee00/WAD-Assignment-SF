<%@ Page Title="SAFOD | Add Promotion" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="addPromotion.aspx.cs" Inherits="WAD_Assignment_SF.promotion.addPromotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/global.css" rel="stylesheet" />
    <link href="../css/promotion.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg align-items-center">
        <div class="row">
            <h1 style="font-size:80px; text-align:center;">
                Add A Promotion Information
            </h1>
        </div>
        <div>
            <h4 style="padding-left:200px; font-size:30px;">
                Enter promotion title: 
                <asp:TextBox ID="promoTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator class="col-auto text-danger" ID="TitleRequired" runat="server" ControlToValidate="promoTitle" ErrorMessage="* Please enter title." Display="Dynamic"></asp:RequiredFieldValidator>
            </h4>
            <p style="padding-left:200px; font-size:30px;">
                &nbsp;</p>
            <h4 style="padding-left:200px; font-size:30px;">
                Enter promotion description: 
                <asp:TextBox ID="promoDescription" runat="server"></asp:TextBox>
            </h4>
            <p style="padding-left:200px; font-size:30px;">
                &nbsp;</p>
        </div>
        <div class="row">
            <h4 class="col" style="padding-left:200px">
                <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-danger" ID="cancel" runat="server" Text="Cancel" CausesValidation="false" OnClick="click_cancel" />
                <asp:Button class="col-2 btn mx-auto font-bold text-l py-2 mx-2 btn-success" ID="post" runat="server" Text="Post" OnClick="click_post" />
            </h4>
        </div>
    </div>
    
</asp:Content>
