﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;

namespace WebSite.Controls
{
    public partial class Registry : System.Web.UI.UserControl
    {
        public int Rol = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            var lstRoles = new RolBO().List();
            rptRol.DataSource = lstRoles;
            rptRol.DataBind();
        }
    }
}