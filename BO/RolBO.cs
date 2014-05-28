using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

namespace BO
{
    public class RolBO
    {
        RolDAO rolDao = new RolDAO();

        public List <Rol> List(string name)
        {
            Rol rol = new Rol();
            rol.Name = name;
            return rolDao.List(rol);
        }

        public List<Rol> List()
        {
            Rol rol = new Rol();
            rol.Name = string.Empty;
            return rolDao.List(rol);
        }

        public Rol Get(int id)
        {
            return rolDao.Get(id);
        }

        public bool Delete(int id)
        {
            Rol rol = new Rol();
            rol.Id = id;
            rolDao.Delete(rol);

            rol = Get(rol.Id);

            if (rol == null)
                return true;

            return false;
        }

        public int Save(Rol rol)
        {
            if (Get(rol.Id) == null)
            {
                //Create rol
                return Insert(rol);
            }
            else
            {
                //Update rol
                return Update(rol);
            }
        }

        private int Update(Rol rol)
        {
            return rolDao.Update(rol);
        }

        private int Insert(Rol rol)
        {
            return rolDao.Insert(rol);
        }
    }
}
