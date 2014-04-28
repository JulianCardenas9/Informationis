using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BO;
using Entity;
using System.Web.Script.Serialization;

namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de AgentService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class CompanyService : System.Web.Services.WebService
    {
        CompanyBO companyBO = new CompanyBO();
        string sessionName = "Document";

        [WebMethod(EnableSession = true)]
        public List<Entity.Company> List(string name)
        {
            int id = int.Parse(Session[sessionName].ToString());
            UserBO userBO = new UserBO();
            User user = userBO.Get(id);

            Entity.Company company = new Entity.Company();
            company.Name = name;
            company.ParentId = user.CompanyId;

            return companyBO.List(company);
        }

        [WebMethod]
        public int Delete(string id)
        {
            Entity.Company company = new Entity.Company();
            company.Id = id;
            return companyBO.Delete(company);
        }

        [WebMethod]
        public Entity.Company Get(string id)
        {
            return companyBO.Get(id);
        }

        [WebMethod]
        public List<Entity.User> GetUsers(string id)
        {
            UserBO userBO = new UserBO();
            Entity.User user = new Entity.User();
            user.CompanyId = id;
            user.Name = string.Empty;

            return userBO.List(user);
        }

        [WebMethod]
        public int  Count()
        {
            
           return  companyBO.Count();
        }

        [WebMethod(EnableSession=true)]
        public bool Save(string nit, string name, decimal document, string username, string password)
        {
            Entity.Company company = new Entity.Company();
            CompanyBO companyBo = new CompanyBO();

            int id = int.Parse(Session[sessionName].ToString());
            UserBO userBO = new UserBO();
            User user = userBO.Get(id);

            var parentCompany = companyBo.Get(user.CompanyId);

            company.Id = nit;
            company.Name = name;
            company.CreationDate = DateTime.Now;
            company.LevelId = parentCompany.LevelId + 1;
            company.ParentId = parentCompany.Id;
            company.CreationUser = id;
            company.ManagerId = document;
            companyBo.Save(company);

            var manager = userBO.Get(document);

            if (manager == null)
            {
                manager = new User();
            }

            manager.CompanyId = nit;
            manager.Document = document;
            manager.Name = username;
            manager.RolId = 1;
            manager.Password = password;

            userBO.Save(manager);
            
            return true;
        }
    }
}
