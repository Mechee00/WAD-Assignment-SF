<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acc_delete.aspx.cs" Inherits="WAD_Assignment_SF.account.acc_delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Account Delete</title>
        <link rel="stylesheet" href="../css/acc_delete.css">
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="container-fluid bg justify-content-center">
                <div class="row spacer"></div>
                <div class="inner_container mx-auto">
                    <div class="row align-items-center mx-5">
                        <!-- Col 1 -->
                        <div class="col-auto card shadow-lg delete_card">
                            <div class="card-body ps-5">
                                <!-- Title -->
                                <h1 class="row mx-1 text-center">
                                    <b>Your account is about to be permanently removed.<br /> Are You sure?</b>
                                </h1>
                                <div class="row space"></div>
                                <!-- Buttons -->
                                <div class="row btn-group-horizontal justify-content-center">
                                    <asp:Button class="col-6 mx-3 btn btn-primary" ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" Font-Size="X-Large" Font-Bold="True" OnClick="btnCancel_Click" />
                                    <asp:Button class="col-4 mx-3 btn btn-outline-danger" ID="btnConfirm" runat="server" CommandName="Confrim" Text="Confirm" Font-Size="X-Large" Font-Bold="True" OnClick="btnConfirm_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </form>
    </body>

</html>
