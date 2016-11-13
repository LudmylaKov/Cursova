<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Authorization</title>
    <link rel="stylesheet" href="~/Content/bootstrap.css" />
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <script src="~/scripts/jquery-1.9.1.js"></script>
    <script src="~/scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="text-align:center;">
                    <h1>Authorization</h1>
        </div>
        
        
        <div class="container" style="text-align:center;">
            <div class="row">
            <div class="col-md-4"> Login</div>
            <div class="col-md-4">
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            </div>
            <div class="col-md-4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
        </div>
                   
            
        </div>
       
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
       
    </form>
</body>
</html>
