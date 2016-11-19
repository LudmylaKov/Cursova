<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Authorization</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/bootstrap.css" />
    <script src="scripts/jquery-1.10.2.min.js"></script>
    <script src="scripts/bootstrap.js"></script>
    
   
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
    
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="text-align:center;">
                    <h1>Authorization</h1>
        </div>
        
        <br />
        <div class="container" style="text-align:center;">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-2"> 
                    <p class="text-success" style="font-size:16px;">
                        <strong>Login</strong></p>
                </div>
                <div class="col-md-2">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4"></div>
            </div> 
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-2 text-success" style="font-size:16px;"> <strong>Password</strong></div>
                <div class="col-md-2">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4"></div>
            </div> 
            <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" class="btn btn-info btn-md" style="font-size:16px;"/>

        </div>
       
       
    </form>
</body>
</html>
