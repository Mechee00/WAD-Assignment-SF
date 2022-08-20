<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WAD_Assignment_SF.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="btn-group-horizontal" role="group" aria-label="">
        <button type="button" class="btn btn-secondary">First One</button>
        <button type="button" class="btn btn-secondary">Second One</button>
        <div class="btn-group" role="group">
            <button id="dropdownId" type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                More than that
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownId">
                <a class="dropdown-item" href="#">First Dropdown</a>
                <a class="dropdown-item" href="#">Second Dropdown</a>
            </div>
        </div>
    </div>
</asp:Content>
