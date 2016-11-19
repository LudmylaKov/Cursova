using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Lecturers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] langs = new string[5];
            langs[0] = "Англійська";
            langs[1] = "Французька";
            langs[2] = "Українська";
            langs[3] = "Німецька";
            langs[4] = "Російська";

            lang.DataSource = langs;
            lang.DataBind();
            
            //testing
            Stuff s = new Stuff();
            s.Age = 23;
            s.Degree = "rty";
            s.Education = "er";
            s.Experience = 24;
            s.FullName = "Erc f";
            s.Languages = "adrer";
            s.Status = "wtqerg";
            s.Tarif = 2354;
            s.WorkHoures = 12;
            Stuff s2 = new Stuff();
            s2.Age = 233;
            s2.Degree = "rty";
            s2.Education = "er";
            s2.Experience = 254;
            s2.FullName = "Erc f";
            s2.Languages = "adrer";
            s2.Status = "wtqerg";
            s2.Tarif = 2354;
            s2.WorkHoures = 12;
            AllStuff.GetRepository().AddLecturer(s);
            AllStuff.GetRepository().AddLecturer(s2);

        }


    }
}