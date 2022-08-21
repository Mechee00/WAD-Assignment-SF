<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="WAD_Assignment_SF.product.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <link rel="stylesheet" href="../css/product.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;">
         <asp:Image ID="Image1" runat="server" width="40" height="32"/>
         <asp:Menu ID="Menu1" runat="server"></asp:Menu>
          <span class="fs-4">Menu</span>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
          <li class="nav-item">
            <a href="#" class="bread" aria-current="page">
              Bread
            </a>
          </li>
          <li>
            <a href="#" class="milk">
              Milk
            </a>
          </li>
          <li>
            <a href="#" class="nav-link link-dark">
              Sugar
            </a>
          </li>
        </ul>
        <hr>
        <div class="dropdown">
          <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="" alt="" width="32" height="32" class="rounded-circle me-2">
            <strong>User</strong>
          </a>
          
          <ul class="dropdown-menu text-small shadow">
            <li><a class="dropdown-item" href="#">Order</a></li>
            <li><a class="dropdown-item" href="#">Profile</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Sign out</a></li>
          </ul>
        </div>
      </div>
         <!--Big div container to cover four div item-->
        <div class="container">
            <!--First div: In first div has two fieldset to design the output-->
            <div class="first_container">
            <!--First fieldset: bread-->
            <fieldset>
                <legend class="new-icon" id="icon"></legend>
                <img alt="" src="" />
                <div><button class="icon-button" onclick="">new product</button></div>
            </fieldset>

            <!--Second fieldset: sugar-->
            <fieldset>
                <legend class="-icon" id="icon"></legend>
                <img alt="" src="" />
                <div class="icon-button">Sugar</div>
            </fieldset>
            </div>

            <!--Second div: In second div has two fieldset to design the output-->
            <div class="second_container">

            <!--First fieldset: milk-->
            <fieldset>
                <legend class="milk-icon" id="icon"></legend>
                <img alt="" src="" />
                <div class="icon-button">Milk</div>
            </fieldset>

            <!--Second fieldset: Most Lovers-->
            <fieldset>
                <legend class="lovers-icon" id="icon"></legend>
                <img alt="" src="" />
                <div class="icon-button">MOST LOVERS</div>
            </fieldset>
            </div>
        </div>
</asp:Content>
