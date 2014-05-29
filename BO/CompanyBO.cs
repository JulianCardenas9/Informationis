using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

/**
* Autor: cegarciaa
* Fecha: 29/05/2014
* Descripción: Clase que representa el objeto de negocio (Bussiness Object)
*				Compañia. Contiene las operaciones CRUD para las compañias.
*
* Autor: cegarciaa
* Fecha: 29/05/2014
* Cambio: Se adiciona log de cambios para auditorias.
**/

namespace BO
{
    public class CompanyBO
    {
        CompanyDAO companyDao = new CompanyDAO();
        UserBO userBO = new UserBO();

        public Company Get(string id)
        {
            return companyDao.Get(id);
        }

        public List<Company> List(Company agent)
        {
            return companyDao.List(agent);
        }

        public int Count()
        {
            return companyDao.Count();
        }

        public int Delete(Company company)
        {
            companyDao.Delete(company);

            var user = Get(company.Id);

            if (user == null)
                return 1;

            return 0;
        }

        public int Save(Company company)
        {
            if (Get(company.Id) == null)
            {
                //Create company
                return Insert(company);
            }
            else
            {
                //Update company
                return Update(company);
            }
        }

        private int Update(Company company)
        {
            return companyDao.Update(company);
        }

        private int Insert(Company company)
        {
            return companyDao.Insert(company);
        }
    }
}
