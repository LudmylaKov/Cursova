using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebApplication4
{
    public partial class Subject1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] langs = new string[5];
            langs[0] = "Англійська";
            langs[1] = "Французька";
            langs[2] = "Українська";
            langs[3] = "Німецька";
            langs[4] = "Російська";
            
            Slang.DataSource = langs;
            Slang.DataBind();
            //texting
            Subject s = new Subject();
            s.SubjectName = "Literature";
            s.Degree = "rty";
            s.Language = "Українська";
            s.Status = "wtqerg";
            Subject s2 = new Subject();
            s2.SubjectName = "Art";
            s2.Degree = "ragdhafjty";
            s2.Language = "Французька";
            s2.Status = "agagn";
            AllSubjects.GetRepository().AddSubject(s);
            AllSubjects.GetRepository().AddSubject(s2);
        }

        protected string GetAllSubjects()
        {
            StringBuilder html = new StringBuilder();
            var sb = AllSubjects.GetRepository().GetAll();
            int count = 1;
            foreach (var s in sb)
            {
                html.Append(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td></tr>",
                    count, s.SubjectName, s.Language, s.Degree, s.Status));
                ++count;
            }
            return html.ToString();
        }
    }
}