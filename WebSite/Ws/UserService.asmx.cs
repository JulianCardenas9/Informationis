using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BO;
using Entity;
using System.Web.Script.Serialization;
using System.Globalization;
using System.Threading;

namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de UserService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class UserService : System.Web.Services.WebService
    {
        RolBO rolBo = new RolBO();
        UserBO userBo = new UserBO();
        string sessionName = "Document";

        [WebMethod]
        public List<Rol> RolList()
        {
            return rolBo.List();
        }

        [WebMethod(EnableSession=true)]
        public bool Validate(decimal document, string password)
        {
            if(userBo.Validate(document, password))
            {
                Session[sessionName] = document;
                Session["RolId"] = 1;
                return true;
            }
            else{
                Session[sessionName] = null;
                return false;
            }
        }

        [WebMethod(EnableSession = true)]
        public decimal Save(int rol, decimal document, string name, string password)
        {
            CultureInfo ci = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;

            int id = int.Parse(Session[sessionName].ToString());
            UserBO userBO = new UserBO();
            User currentUser = userBO.Get(id);

            Entity.User user = new Entity.User();
            user.Document = document;
            user.Name = name;
            user.Password = password;
            user.RolId = rol;
            user.CompanyId = currentUser.CompanyId;

            userBO.Save(user);

            return user.Document;
        }

        [WebMethod(EnableSession = true)]
        public List<User> List(string name)
        {
            int id = int.Parse(Session[sessionName].ToString());
            UserBO userBO = new UserBO();
            User user = userBO.Get(id);
            user.Name = name;
            
            return userBo.List(user);
        }

        [WebMethod(EnableSession = true)]
        public int Delete(decimal document)
        {
            return userBo.Delete(document);
        }

        [WebMethod(EnableSession = true)]
        public Entity.User Get(decimal document)
        {
            return userBo.Get(document);
        }
    }
}
