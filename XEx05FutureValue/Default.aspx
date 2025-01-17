﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XEx05FutureValue.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Future Value Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header class="jumbotron">
        <img id="logo" alt="Murach logo" src="Images/MurachLogo.jpg" class="img-rounded img-responsive"/>
        <h1>401K Future Value Calculator</h1>
    </header> 
    <main> 
        <form id="form1" runat="server" class="form-horizontal" role="form">
            <div class="form-group">
                <label class="control-label col-sm-3" for="ddlMonthlyInvestment">
                    Monthly Investment:</label>
                <div class="col-sm-3">
                    <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" CssClass="form-control">
                    </asp:DropDownList >
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3" for="txtInterestRate">
                    Annual interest rate:</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtInterestRate" runat="server" CssClass="form-control">3.0</asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        CssClass="text-danger" ErrorMessage="Interest rate is required." 
                        ControlToValidate="txtInterestRate" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger" 
                        ControlToValidate="txtInterestRate" Display="Dynamic" 
                        ErrorMessage="Interest rate must range from 1 to 20." MaximumValue="20" 
                        MinimumValue="1" Type="Double"></asp:RangeValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3" for="txtYears">
                    Number of years:</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtYears" runat="server" CssClass="form-control">10</asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        CssClass="text-danger" ControlToValidate="txtYears" Display="Dynamic" 
                        ErrorMessage="Number of years is required."></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="text-danger"
                        ControlToValidate="txtYears" Display="Dynamic" 
                        ErrorMessage="Years must range from 1 to 45." MaximumValue="45" 
                        MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3" for="lblFutureValue">
                    Future Value:</label>
                <div class="col-sm-9">
                    <asp:Label ID="lblFutureValue" runat="server" CssClass="text-info"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" 
                        onclick="btnCalculate_Click" CssClass="btn btn-primary" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" 
                        onclick="btnClear_Click" CssClass="btn btn-primary" CausesValidation="False" />
                </div>
            </div>      
        </form>
    </main>
</div> 
</body>
</html>
