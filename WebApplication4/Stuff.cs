using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication4
{
    public class Stuff
    {
        public string FullName { get; set; }
        public double Tarif { get; set; }
        public string Education { get; set; }
        public int Experience { get; set; }
        public int Age { get; set; }
        public string Degree { get; set; }
        public string Status { get; set; }
        public string Languages { get; set; }
        public int WorkHoures { get; set; }
    }

    public class Subject
    {
        public string SubjectName { get; set; }
        public string Language { get; set; }
        public string Degree { get; set; }
        public string Status { get; set; }
    }
    
    public class TimeTable
    {
        public string Date { get; set; }
        public int IdStuff { get; set; }
        public int IdSubject { get; set; }
    }
}