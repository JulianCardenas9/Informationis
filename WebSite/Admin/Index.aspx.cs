using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using Entity;

namespace WebSite.Admin
{
    public partial class Index : System.Web.UI.Page
    {
        CompanyBO companyBO = new CompanyBO();
        string sessionName = "Document";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Level
            int id = int.Parse(Session[sessionName].ToString());
            UserBO userBO = new UserBO();
            User user = userBO.Get(id);

            Entity.Company company = new Entity.Company();
            company.Id = user.CompanyId;

            company = companyBO.Get(user.CompanyId);

            if (user.RolId == -1)
            {
                Response.Redirect("Manage.aspx");
            }
        }
    }
}