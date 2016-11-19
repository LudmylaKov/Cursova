<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="WebApplication4.Subject1" %>

<%@ Import Namespace="WebApplication4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subjects</title>    
    
  
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" />
  <link rel="stylesheet" type="text/css" href="Content/bootstrap-sortable.css" />
  <link rel="stylesheet" type="text/css" href="Styles.css" />
  <script src="scripts/jquery-1.10.2.min.js"></script>
  <script src="scripts/bootstrap-sortable.js"></script>
    
<style>
    
</style>
    
    

</head>
<body>
    <div class="page-header text-center">
      <h1>Відділ кадрів ВНЗ</h1>
      <p>Вітаю, <% Response.Write(Log.GetLog().login); %></p>
    </div>

    <nav class="navbar navbar-default">
      <div class="container">        
        <ul class="nav navbar-nav">
          <li><a href="Lecturers.aspx">Викладачі</a></li>
          <li class="active"><a href="Subjects.aspx"><strong>Предмети</strong></a></li>
          <li><a href="#">Timetable</a></li> 
        </ul>
      </div>
    </nav>

<br />
<br />

 <form id="form1" runat="server">
<div class="container">
   <h2>Додати новий...</h2>
       <asp:TextBox ID="SName" runat="server" ValidateRequestMode="Enabled">Назва...</asp:TextBox>
             
       <asp:RadioButtonList ID="Slang" runat="server">
       </asp:RadioButtonList>       
       
       <asp:DropDownList ID="DDSDegree" runat="server">
           <asp:ListItem>Науковий ступінь</asp:ListItem>
           <asp:ListItem>Відсутній</asp:ListItem>
           <asp:ListItem>Доктор філософії</asp:ListItem>
           <asp:ListItem>Доктор наук</asp:ListItem>
       </asp:DropDownList>
       <asp:DropDownList ID="DDSStatus" runat="server">
           <asp:ListItem>Вчене звання</asp:ListItem>
           <asp:ListItem>Старший дослідник</asp:ListItem>
           <asp:ListItem>Доцент</asp:ListItem>
           <asp:ListItem>Професор</asp:ListItem>
       </asp:DropDownList>
    
   
         <div>
    
        <asp:Button ID="AddButton" runat="server" Text="Додати"  class="btn btn-default btn-lg"/>
    
    </div>

        <br />
</div>
<div class="container bg-grey">
    <h2>Усі предмети</h2>
        <table id="table" class="table table-bordered table-striped sortable" style="text-align: center;" border="1" >
            <thead>
                <tr>
                    <th >#</th>
                    <th  data-defaultsort="asc" id="name">Назва </th>
                    <th  id="lang">Мова викладання </th>                   
                    <th  id ="degree">Науковий ступінь</th>
                    <th  id="status">Вчене звання </th>              
                 </tr>
            </thead>

            <tbody>
                
                <%= GetAllSubjects()%>
                
            </tbody>
        </table>
     </div>   

    </form>

</body>
</html>