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
            string[] mycountries = new string[2];
            mycountries[0] = "Sweden";
            mycountries[1] = "Norway";
            
            countrylist.DataSource = mycountries;
            countrylist.DataBind();
            //Stuff s = new Stuff();
            //s.Age = 23;
            //s.Degree = "rty";
            //s.Education = "er";
            //s.Experience = 24;
            //s.FullName = "Erc f";
            //s.Languages = "adrer";
            //s.Status = "wtqerg";
            //s.Tarif = 2354;
            //s.WorkHoures = 12;
            //Stuff s2 = new Stuff();
            //s2.Age = 233;
            //s2.Degree = "rty";
            //s2.Education = "er";
            //s2.Experience = 254;
            //s2.FullName = "Erc f";
            //s2.Languages = "adrer";
            //s2.Status = "wtqerg";
            //s2.Tarif = 2354;
            //s2.WorkHoures = 12;
            //AllStuff.GetRepository().AddLecturer(s);
            //AllStuff.GetRepository().AddLecturer(s2);

        }


    }
}