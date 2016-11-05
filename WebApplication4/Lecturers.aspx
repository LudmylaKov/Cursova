<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lecturers.aspx.cs" Inherits="WebApplication4.Lecturers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lecturers</title>    
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
    <link rel="stylesheet" href="D:\ШАГ\Проекти\WebApplication4\WebApplication4\Content\bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
   <asp:RadioButtonList id="countrylist" runat="server">

</asp:RadioButtonList>
         <div>
    
        <asp:Button ID="Button1" runat="server" Text="Add new" />
    
    </div>
        <br />

        <table id="mytable" class="table table-striped" border="1" contenteditable="true">
            <thead>
                <tr>
                    <th class="sort-alpha sortable">#</th>
                    <th class="sort-alpha sortable" id="task_name">Name<span class="glyphicon glyphicon-sort" aria-hidden="true"></span></th>
                    <th class="sort-alpha sortable">Education</th>
                    <th class="sort-alpha sortable" id="priority_level">Experience<span class="glyphicon glyphicon-sort" aria-hidden="true"></span></th>
                    <th>Age</th>
                    <th class="sort-alpha sortable" id="user_i">Languages<span class="glyphicon glyphicon-sort" aria-hidden="true"></span></th>                    
                    <th class="sort-alpha sortable" id="user_id">Degree<span class="glyphicon glyphicon-sort" aria-hidden="true"></span></th>
                </tr>
            </thead>

            <tbody>
               
            </tbody>
        </table>


    </form>

</body>
</html>


