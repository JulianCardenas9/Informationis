using System;
using System.Collections.Generic;
using DAOBase;
using Entity;

namespace DAO
{
    public class CompanyDAO : Base
    {
        public Company Get(string id)
        {
            Company company = new Company();
            company.Id = id;
            return Get<Company>("CompanyGet", company);
        }

        public int Insert(Company company)
        {
            return ExecuteScalar("CompanyInsert", company);
        }

        public int Update(Company user)
        {
            return ExecuteScalar("CompanyUpdate", user);
        }

        public List<Company> List(Company agent)
        {
            return Execute<Company>("CompanyList", agent);
        }

        public int Count()
        {
            return ExecuteScalar("AgentCount", new Company());
        }

        public void Delete(Company company)
        {
            Execute<Company>("CompanyDelete", company);
        }
    }
}
