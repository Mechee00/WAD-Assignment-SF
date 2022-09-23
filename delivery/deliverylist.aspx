<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="deliverylist.aspx.cs" Inherits="WAD_Assignment_SF.delivery.deliverylist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/global.css" rel="stylesheet" />
    <link href="../css/delivery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title -->
        <div class="row bg align-items-center ps-5" style="padding-left:250px; padding-right:250px; height:800px;">
    <div class="row" >
        <h1 class="col">
            <span class="col">
                Delivery List
            </span>
        </h1>
    </div>
    <br />
        <div class="align-self-top">
            <!-- lists table -->
            <!-- title -->
            <asp:Table class="row fixed" ID="Table1" runat="server" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" Width="100%" style="background: #ffc990; text-align:center; color:black;">
                <asp:TableRow runat="server" Font-Size="XX-Large" style="background: #f5a856; ">
                    <asp:TableCell runat="server" Width="25%">
                        <asp:Label ID="Label1" runat="server" Text="Delivery ID"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Width="25%">
                        <asp:Label ID="Label2" runat="server" Text="Delivery Date"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Width="25%">
                        <asp:Label ID="Label3" runat="server" Text="Delivery Status"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Width="25%">
                        <asp:Label ID="Label4" runat="server" Text="Order ID"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label5" runat="server" Text="7A43FC74-9F2A-4E78-9FAE-9ACD72D9ABEA"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label6" runat="server" Text="19/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label7" runat="server" Text="DeliverySuccess"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label14" runat="server" Text="615C7C34-BAAE-432A-A0D8-4234CB5D8B3D"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label8" runat="server" Text="D7E7F07F-D9A7-4DC9-A5A7-CF1DBF90CE08"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label9" runat="server" Text="30/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label10" runat="server" Text="Delivery Failed"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label15" runat="server" Text="F26EA370-ABC7-4842-93AC-FE506C8F7FC3"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label11" runat="server" Text="807AAC4C-92AD-4489-966A-E2E4F4CE1E52"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label12" runat="server" Text="31/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label13" runat="server" Text="Delivery Pending"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label16" runat="server" Text="717AF4C9-2AB6-4729-AA4D-C96DA46A1B24"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label17" runat="server" Text="7A43FC74-9F2A-4E78-9FAE-9ACD72D9ABEA"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label18" runat="server" Text="19/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label19" runat="server" Text="DeliverySuccess"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label20" runat="server" Text="615C7C34-BAAE-432A-A0D8-4234CB5D8B3D"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label21" runat="server" Text="D7E7F07F-D9A7-4DC9-A5A7-CF1DBF90CE08"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label22" runat="server" Text="30/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label23" runat="server" Text="Delivery Failed"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label24" runat="server" Text="F26EA370-ABC7-4842-93AC-FE506C8F7FC3"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label25" runat="server" Text="807AAC4C-92AD-4489-966A-E2E4F4CE1E52"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label26" runat="server" Text="31/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label27" runat="server" Text="Delivery Pending"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label28" runat="server" Text="717AF4C9-2AB6-4729-AA4D-C96DA46A1B24"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label29" runat="server" Text="7A43FC74-9F2A-4E78-9FAE-9ACD72D9ABEA"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label30" runat="server" Text="19/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label31" runat="server" Text="DeliverySuccess"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label32" runat="server" Text="615C7C34-BAAE-432A-A0D8-4234CB5D8B3D"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label33" runat="server" Text="D7E7F07F-D9A7-4DC9-A5A7-CF1DBF90CE08"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label34" runat="server" Text="30/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label35" runat="server" Text="Delivery Failed"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label36" runat="server" Text="F26EA370-ABC7-4842-93AC-FE506C8F7FC3"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label37" runat="server" Text="807AAC4C-92AD-4489-966A-E2E4F4CE1E52"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label38" runat="server" Text="31/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label39" runat="server" Text="Delivery Pending"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label40" runat="server" Text="717AF4C9-2AB6-4729-AA4D-C96DA46A1B24"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label41" runat="server" Text="7A43FC74-9F2A-4E78-9FAE-9ACD72D9ABEA"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label42" runat="server" Text="19/8/2022"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label43" runat="server" Text="DeliverySuccess"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label44" runat="server" Text="615C7C34-BAAE-432A-A0D8-4234CB5D8B3D"></asp:Label>
                    </asp:TableCell>
                    </asp:TableRow>
            </asp:Table>
            <div class="row">
            <asp:Button class="col-1" ID="Button3" runat="server" Text="1" /><asp:Button class="col-1" ID="Button4" runat="server" Text="2" />
            </div>
            <br />
            <div class="row">
                <asp:Button ID="returnbtn" class="col-2 btn mx-2 font-bold text-l py-2 mx-2 btn-warning" runat="server" Text="Return" OnClick="returnbtn_Click" />
            </div>
        </div>
            </div>
</asp:Content>
