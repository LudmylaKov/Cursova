<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lecturers.aspx.cs" Inherits="WebApplication4.Lecturers" %>
<%@ Import Namespace="WebApplication4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lecturers</title>    
    
  
   <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" />
   <link rel="stylesheet" type="text/css" href="~/Content/bootstrap-sortable.css" />
    
   
   
    <script src="~/scripts/bootstrap-sortable.js"></script>
   
    
    

</head>
<body>
    <form id="form1" runat="server">
   <asp:RadioButtonList id="countrylist" runat="server">

</asp:RadioButtonList>
         <div>
    
        <asp:Button ID="Button1" runat="server" Text="Add new" />
    
    </div>
        <br />
<div class="container">
        <table id="table" class="table table-bordered table-striped sortable" style="text-align: center;" border="1" >
            <thead>
                <tr>
                    <th >#</th>
                    <th  data-defaultsort="asc" id="name">Name </th>
                    <th  id="education">Education </th>
                    <th  id="experience">Experience </th>
                    <th  id ="age">Age</th>
                    <th  id="languages">Languages </th>                    
                    <th  id="degree">Degree </th>
                    <th  id="status">Status </th>                    
                    <th  id="tariff">Tariff </th>                    
                    <th  id="workhours">Work hours </th>                  
                 </tr>
            </thead>

            <tbody>
                <tr><td>{0}</td><td>{1}</td><td>{2}</td><td>3657</td><td>8896</td><td>{5}</td><td>{6}</td><td>{7}</td><td>{8}</td><td>{9}</td></tr>
                <tr><td>{0}</td><td>{1}</td><td>{2}</td><td>356</td><td>578</td><td>{5}</td><td>{6}</td><td>{7}</td><td>{8}</td><td>{9}</td></tr>
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


