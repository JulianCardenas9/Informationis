using System.Collections.Generic;
using System.Globalization;
using System.Threading;
using System.Web.Services;
using BO;
using Entity;


namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de RolService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class RolService : System.Web.Services.WebService
    {
        RolBO rolBo = new RolBO();

        [WebMethod(EnableSession = true)]
        public List<Rol> List(string name)
        {
            RolBO rolBO = new RolBO();
            return rolBO.List(name);
        }

        [WebMethod(EnableSession = true)]
        public decimal Save(int id, string name, string description)
        {
            Rol currentUser = rolBo.Get(id);

            Entity.Rol rol = new Entity.Rol();
            rol.Id = id;
            rol.Name = name;
            rol.Description = description;

            return rolBo.Save(rol);
        }

        [WebMethod(EnableSession = true)]
        public bool Delete(int id)
        {
            return rolBo.Delete(id);
        }

        [WebMethod(EnableSession = true)]
        public Entity.Rol Get(int id)
        {
            return rolBo.Get(id);
        }
    }
}
