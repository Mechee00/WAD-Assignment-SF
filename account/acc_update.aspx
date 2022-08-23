<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="acc_update.aspx.cs" Inherits="WAD_Assignment_SF.account.acc_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <link rel="stylesheet" href="../css/acc_update.css">
    <link rel="stylesheet" href="../css/global.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
        <!-- Spacer / Tittle -->
        <div class="row align-items-center me-5" style="height: 180px;">
            <h1 class="font-bolder text-xl-center color-dyellow">Edit Profile</h1>
        </div>
        <!-- Row 1 Input -->
        <div class="row ps-4 needs-validation mx-auto justify-content-center">
            <!-- Left Personal Details -->
            <div class="col-5 text-xl font-bolder">
                <h1 class="font-bolder text-xxl color-dyellow">Profile Detail</h1>
                <br>
                <!-- Row 1 First Name -->
                <div class="col-5">
                    <label for="vldFisrtName" class="form-label">First name*</label>
                    <input type="text" class="form-control" id="vldFisrtName" value="" required>
                </div><br>
                <!-- Row 2 Last Name -->
                <div class="col-5">
                    <label for="vldLastName" class="form-label">Last name</label>
                    <input type="text" class="form-control" id="vldLastName" value="">
                </div><br>
                <!-- Row 3 User Name -->
                <div class="col-5">
                    <label for="vldLastName" class="form-label">Username*</label>
                    <input type="text" class="form-control" id="vldLastName" value="" required>
                </div><br>
                <!-- Row 4 Contact -->
                <div class="col-5">
                    <label for="vldContact" class="form-label">Contact Number*</label>
                    <input type="tel" class="form-control" id="vldContact" value="" required>
                </div><br>
                <!-- Row 5 Email -->
                <div class="col-5">
                    <label for="vldEmail" class="form-label">Email*</label>
                    <input type="email" class="form-control" id="vldEmail" required>
                </div><br>

                <!-- Row 6 Gender -->
                <div class="col-7">
                    Gender<br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inRadMale" value="m">
                        <label class="form-check-label" for="inRadMale">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inRadFemale" value="f">
                        <label class="form-check-label" for="inRadFemale">Female</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inRadSecret" value="0">
                        <label class="form-check-label" for="inRadSecret">Secret</label>
                    </div>
                </div>
                <br>
                <!-- Row 7 Birthday -->
                <div class="col-7 d-inline">
                    Birthday<br>
                    <div class="col-3 d-inline-block">
                        <label for="vldDate" class="form-label">Day</label>
                        <select class="form-select" id="vldDate" required>
                            <option selected disabled value="">-Day-</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>
                    </div>
                    <div class="col-3 d-inline-block">
                        <label for="vldDate" class="form-label">Month</label>
                        <select class="form-select" id="vldDate" required>
                            <option selected disabled value="">-Month-</option>
                            <option value="1">January</option>
                            <option value="2">Febuary</option>
                            <option value="3">March</option>
                            <option value="4">April</option>
                            <option value="5">May</option>
                            <option value="6">June</option>
                            <option value="7">Jully</option>
                            <option value="8">August</option>
                            <option value="9">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                    </div>
                </div>
            </div>
            <!-- Right Address Details -->
            <div class="col-4 text-xl font-bolder">
                <h1 class="font-bolder text-xxl color-dyellow">Address</h1>
                <br>

                <!-- Row 1 Unit -->
                <div class="col-5">
                    <label for="vldUnit" class="form-label">Unit*</label>
                    <input type="text" class="form-control" id="vldUnit" value="" required>
                </div><br>
                <!-- Row 2 Building -->
                <div class="col-5">
                    <label for="vldBuilding" class="form-label">Building*</label>
                    <input type="text" class="form-control" id="vldBuilding" value="" required>
                </div><br>
                <!-- Row 3 Street -->
                <div class="col-5">
                    <label for="vldStreet" class="form-label">Street*</label>
                    <input type="text" class="form-control" id="vldStreet" value="" required>
                </div><br>
                <!-- Row 4 Postcode -->
                <div class="col-5">
                    <label for="vldPost" class="form-label">Postcode*</label>
                    <input type="text" class="form-control" id="vldPost" value="" required>
                </div><br>
                <!-- Row 5 State -->
                <div class="col-3">
                    <label for="vldState" class="form-label">State</label>
                    <select class="form-select" id="vldState" required>
                        <option selected disabled value="">-Pick a State-</option>
                        <option value="Johor">Johor</option>
                        <option value="Kedah">Kedah</option>
                        <option value="Kelantan">Kelantan</option>
                        <option value="Malacca">Malacca</option>
                        <option value="Negeri">Negeri Sembilan</option>
                        <option value="Pahang">Pahang</option>
                        <option value="Penang">Penang</option>
                        <option value="Perak">Perak</option>
                        <option value="Perlis">Perlis</option>
                        <option value="Sabah">Sabah</option>
                        <option value="Sarawak">Sarawak</option>
                        <option value="Selangor">Selangor</option>
                        <option value="Terengganu">Terengganu</option>
                    </select>
                </div>
            </div>
        </div>
        <!-- divider -->
        <div class="row" style="height: 80px;"></div>
        <!-- Row 2 Confirm buttons -->
        <div class="row justify-content-center">
            <asp:Button class="mx-2 col-2 font-bold text-xl btn btn-outline-danger" ID="btnDiscard" runat="server" Text="Discard" Height="60px" />
            <asp:Button class="mx-2 col-2 font-bold text-xl btn btn-primary" ID="btnUpdate" runat="server" Text="Update" Height="60px" />
        </div>
    </div>
</asp:Content>
