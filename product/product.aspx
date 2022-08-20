<%@ Page Title="SAFOD | Account" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WAD_Assignment_SF.account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- <script src="../js/account.js"></script> -->
    <link rel="stylesheet" href="../css/account.css">
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <link rel="stylesheet" href="../product/product.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row bg justify-content-start ps-4">
         <!--Big div container to cover four div item-->
        <div class="container">

            <!--First div: In first div has two fieldset to design the output-->
            <div class="first_container">

            <!--First fieldset: new product-->
            <fieldset>
                <legend class="new-product" id="icon"></legend>
                <div>
                <h3>New Product</h3>
                <!--button: use javascript to call the function-->
                <div><button class="icon-button" onclick="">NEW PRODUCT</button></div>
            </fieldset>

            <!--Second fieldset: Near by-->
            <fieldset>
                <legend class="near-by" id="icon"></legend>
                <h3>Near By</h3>
                <div class="icon-button">NEAR BY</div>
                </a>
            </fieldset>
            </div>

            <!--Second div: In second div has two fieldset to design the output-->
            <div class="second_container">

            <!--First fieldset: Best Seller-->
            <fieldset>
                <legend class="best-seller" id="icon"></legend>
                <h3>Bests Seller In Current Year</h3>
                <div class="icon-button">BEST SELLER</div>
                </a>
            </fieldset>

            <!--Second fieldset: Most Lovers-->
            <fieldset>
                <legend class="social-icon" id="icon"></legend>
                <h3>Most Lovers</h3>
                <div class="icon-button">MOST LOVERS</div>
                </a>
            </fieldset>
            </div>
        </div>
    </div>
</asp:Content>