﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MATH1.Main
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(blue.query2("SELECT * FROM `progress` WHERE gradelevel = 2 and topic = 'SUBTRACTION' and stud_id = 20231080"));
        }
    }
}