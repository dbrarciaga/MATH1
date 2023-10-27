using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MATH1
{
    public class QuizClass
    {
         static int Selected_Quiz = 0;
        public int Selected
        {
            get { return Selected_Quiz; }
            set { Selected_Quiz = value;  }
        } 
   
        public QuizClass(int num)
        {
            Selected = num;
        }
        public QuizClass()
        {

        }
    }
}