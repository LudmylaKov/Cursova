<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lecturers.aspx.cs" Inherits="WebApplication4.Lecturers" %>
<%@ Import Namespace="WebApplication4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lecturers</title>    
    
  
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
          <li class="active"><a href="Lecturers.aspx"><strong>Викладачі</strong></a></li>
          <li><a href="Subjects.aspx">Предмети</a></li>
          <li><a href="#">Розклад</a></li> 
        </ul>
      </div>
    </nav>

<br />
<br />
 <form id="form1" runat="server">
<div class="container">
   <h2>Додати нового...</h2>
       <asp:TextBox ID="fullname" runat="server" ValidateRequestMode="Enabled">Повне ім'я...</asp:TextBox>
       
       <asp:TextBox ID="exp" runat="server">Досвід...</asp:TextBox>
    <asp:TextBox ID="setAge" runat="server">Вік...</asp:TextBox>
    <asp:TextBox ID="tarif" runat="server">Тариф...</asp:TextBox>
    <asp:TextBox ID="workh" runat="server">Робочі години...</asp:TextBox>
       
       <asp:CheckBoxList ID="lang" runat="server">
       </asp:CheckBoxList>
       
       <asp:DropDownList ID="DDEducation" runat="server">
           <asp:ListItem>Освіта</asp:ListItem>
           <asp:ListItem>Повна середня</asp:ListItem>
           <asp:ListItem>Неповна вища</asp:ListItem>
           <asp:ListItem>Повна вища</asp:ListItem>
           <asp:ListItem>Професійна</asp:ListItem>
       </asp:DropDownList>
       <asp:DropDownList ID="DDDegree" runat="server">
           <asp:ListItem>Науковий ступінь</asp:ListItem>
           <asp:ListItem>Відсутній</asp:ListItem>
           <asp:ListItem>Доктор філософії</asp:ListItem>
           <asp:ListItem>Доктор наук</asp:ListItem>
       </asp:DropDownList>
       <asp:DropDownList ID="DDStatus" runat="server">
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
    <h2>Усі викладачі</h2>
        <table id="table" class="table table-bordered table-striped sortable" style="text-align: center;" border="1" >
            <thead>
                <tr>
                    <th >#</th>
                    <th  data-defaultsort="asc" id="name">Ім'я </th>
                    <th  id="education">Освіта </th>
                    <th  id="experience">Досвід </th>
                    <th  id ="age">Вік</th>
                    <th  id="languages">Мови </th>                    
                    <th  id="degree">Науковий ступінь </th>
                    <th  id="status">Вчене звання </th>                    
                    <th  id="tariff">Тариф </th>                    
                    <th  id="workhours">Робочі години </th>                  
                 </tr>
            </thead>

            <tbody>
                <tr><td>1</td><td>sgh</td><td>sfj</td><td>3657</td><td>8896</td><td>{5}</td><td>{6}</td><td>{7}</td><td>{8}</td><td>{9}</td></tr>
                <tr><td>2</td><td>qry</td><td>34ga</td><td>356</td><td>578</td><td>{5}</td><td>{6}</td><td>{7}</td><td>{8}</td><td>{9}</td></tr>
                <% var st = AllStuff.GetRepository().GetAll();
                    int count = 1;
                foreach (var s in st) {
                    string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td><td>{6}</td><td>{7}</td><td>{8}</td><td>{9}</td></tr>",
                        count, s.FullName, s.Education, s.Experience, s.Age, s.Languages, s.Degree, s.Status, s.Tarif, s.WorkHoures);
                    Response.Write(htmlString);
                        ++count;
                } %>
                
            </tbody>
        </table>
     </div>   

    </form>

</body>
</html>


