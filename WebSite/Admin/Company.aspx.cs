using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BO;
using Entity;
using System.Web.Script.Serialization;

namespace WebSite.Admin
{
    public partial class Company : System.Web.UI.Page
    {
        CompanyBO companyBO = new CompanyBO();
        string sessionName = "Document";

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Session[sessionName].ToString());
            UserBO userBO = new UserBO();
            User user = userBO.Get(id);

            Entity.Company company = new Entity.Company();
            company.Id = user.CompanyId;

            company = companyBO.Get(user.CompanyId);

            if (company.LevelId == 4)
                Response.Redirect("index.aspx");
        }
    }
}