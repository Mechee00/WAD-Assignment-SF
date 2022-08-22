<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="assignment.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="left container" style="margin-left: 40px">
        <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick1" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Best Seller" Value="0"></asp:MenuItem>

                <asp:MenuItem Text="Bread History" Value="1">
                    <asp:MenuItem Text="Bread" Value="0"></asp:MenuItem>
                    <asp:MenuItem Text="Cakes" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Loaves" Value="0"></asp:MenuItem>
                </asp:MenuItem>
                
                <asp:MenuItem Text="Farm Fresh" Value="2">
                    <asp:MenuItem Text="Plant-Based Milk" Value="0"></asp:MenuItem>
                    <asp:MenuItem Text="Goat's Milk" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Yogurt " Value="2"></asp:MenuItem>
                </asp:MenuItem>
                
                <asp:MenuItem Text="Nestle" Value="3">
                    <asp:MenuItem Text="Nescafé" Value="0"></asp:MenuItem>
                    <asp:MenuItem Text="KitKat" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Milo" Value="2"></asp:MenuItem>
                </asp:MenuItem>
                
                <asp:MenuItem Text="Gula Cakery" Value="4">
                    <asp:MenuItem Text="Ice Cream Cakes" Value="0"></asp:MenuItem>
                    <asp:MenuItem Text="Cakes" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Cookies" Value="2"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    <br />
    
    <div style="margin-left: 40px">
        <asp:ListView ID="productList" runat="server" DataKeyNames="ProductID" GroupItemCount="5"
            ItemType="Safod.Menu.Product" SelectMethod="GetProducts">
            <EmptyDataTemplate>
                <table >
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            
            <ItemTemplate>
                <td runat="server">
                    <table>
                        <tr>
                            <td>
                                <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                    <img src="../images/<%#:Item.ImagePath%>"
                                            width="200" height="200" style="border: solid" /></a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                    <span>
                                        <%#:Item.ProductName%>
                                    </span>
                                </a>
                                <br />

                                <span>
                                    <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                </span>
                                <br />
                            </td>
                        </tr>
                        
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </ItemTemplate>
            
            <LayoutTemplate>
                <table style="width:100%;">
                    <tbody>
                        <tr>
                            <td>
                                <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                    <tr id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
</asp:Content>
