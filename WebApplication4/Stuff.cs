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
    public class AllStuff
    {
        private static AllStuff repository = new AllStuff(); 
        private List<Stuff> stuff = new List<Stuff>();

        public static AllStuff GetRepository()
        {
            return repository;
        }

        public IEnumerable<Stuff> GetAll()
        {
            return stuff;
        }

        public void AddLecturer(Stuff lect)
        {
            stuff.Add(lect);
        }
    }
    public class Subject
    {
        public string SubjectName { get; set; }
        public string Language { get; set; }
        public string Degree { get; set; }
        public string Status { get; set; }
    }
    public class AllSubjects
    {
        private static AllSubjects repository = new AllSubjects();
        private List<Subject> stuff = new List<Subject>();

        public static AllSubjects GetRepository()
        {
            return repository;
        }

        public IEnumerable<Subject> GetAll()
        {
            return stuff;
        }

        public void AddSubject(Subject sb)
        {
            stuff.Add(sb);
        }
    }
    public class TimeTable
    {
        public string Date { get; set; }
        public int IdStuff { get; set; }
        public int IdSubject { get; set; }
    }

    public class Log
    {
        public string login { get; set; }
        public string password { get; set; }
        private static Log l = new Log();
        public static Log GetLog()
        {
            return l;
        }
    }
}