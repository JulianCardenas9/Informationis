using System.Collections.Generic;
using DAOBase;
using Entity;

namespace DAO
{
    public class RolDAO : Base
    {
        public List <Rol> List(Rol rol)
        {
            return Execute<Rol>("RolList", rol);
        }

        public Rol Get(int id)
        {
            Rol rol = new Rol();
            rol.Id = id;
            return Get<Rol>("RolGet", rol);
        }

        public int Insert(Rol rol)
        {
            return ExecuteScalar("RolInsert", rol);
        }

        public int Update(Rol rol)
        {
            return ExecuteScalar("RolUpdate", rol);
        }

        public void Delete(Rol rol)
        {
            Execute<Rol>("RolDelete", rol);
        }
    }
}
    