using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using Entity;

namespace WebSite.Controls
{
    public partial class PrivateHeader : System.Web.UI.UserControl
    {
        CompanyBO companyBO = new CompanyBO();
        string sessionName = "Document";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //si esta loggeado
                if (Session[sessionName] != null)
                {
                    int id = int.Parse(Session[sessionName].ToString());
                    UserBO userBO = new UserBO();
                    User user = userBO.Get(id);

                    ltName.Text = "Bienvenido: "+user.Name;
                    ltRol.Text = user.RolName;
                    ltCompany.Text = user.CompanyName;
                    ltName.Visible = true;
                    ltRol.Visible = true;
                    ltCompany.Visible = true;

                    pnlLogin.Visible = false;

                    Validate();
                }
                else {
                    ltName.Visible = false;
                    pnlLogin.Visible = true;
                }
            }
            catch { }
        }

        private void Validate()
        {
            //Level
            int id = int.Parse(Session[sessionName].ToString());
            UserBO userBO = new UserBO();
            User user = userBO.Get(id);

            Entity.Company company = new Entity.Company();
            company.Id = user.CompanyId;

            company = companyBO.Get(user.CompanyId);

            if (company.LevelId == 4)
                lblCompany.Visible = false;

            //Rol
            if (user.RolId > 2)
            {
                lblCompany.Visible = false;
                lblUser.Visible = false;
            }

            if (user.RolId == 2)
            {
                lblCompany.Visible = false;
            }

            if (user.RolId == -1)
            {
                lblManage.Visible = true;
                lblHome.Visible = false;
                lblCompany.Visible = false;
                lblUser.Visible = false;
            }
            else
            {
                lblManage.Visible = false;
            }
        }

        protected void lnkClose_Click(object sender, EventArgs e)
        {
            Session[sessionName] = null;
            Response.Redirect("/home.aspx", true);
        }
    }
}