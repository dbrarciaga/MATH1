using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MATH1
{
    public class Roster
    {
        static int grade = 0;
        public int GetGrade
        {
            get { return grade; }
            set { grade = value; }
        }
        public Roster(int a)
        {
            GetGrade = a;
        }
        public Roster()
        {
            //waow is great
        }
    }
}