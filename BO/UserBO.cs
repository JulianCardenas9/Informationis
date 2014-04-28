using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

namespace BO
{
    public class UserBO
    {
        UserDAO userDao = new UserDAO();

        public bool Validate(decimal document, string password)
        {
            if (userDao.Get(document, password) == null)
            {
                return false;
            }
            else 
            {
                return true;
            }
        }

        public bool ClientValidate(decimal document, String date)
        {
            if (userDao.GetClient(document, date) == null)
            {
                return false  ;
            }
            else
            {
                return true;
            }
           
        }

        public User Get(decimal document)
        {
            return userDao.Get(document);
        }

        public int Delete(decimal document)
        {
            User user = new User();
            user.Document = document;
            return userDao.Delete(user);
        }

        public decimal Save(User user)
        {
            if (Get(user.Document) == null)
            {
                //Create user
                user.CreationDate = DateTime.Now;
                userDao.Insert(user);
            }
            else
            {
                //Update user
                userDao.Update(user);
            }

            //Si es superadministrador
            if (user.RolId == 1)
            {
                var currentUser = new User();
                currentUser.CompanyId = user.CompanyId;
                currentUser.Name = "";
                var lstUsers = List(currentUser);

                for (int i = 0; i < lstUsers.Count; i++)
                {
                    if (lstUsers[i].RolId == 1 && lstUsers[i].Document != user.Document)
                    {
                        lstUsers[i].RolId = 2;
                        userDao.Update(lstUsers[i]);
                    }
                }
            }

            return user.Document;
        }

        public List<User> List(User user)
        {
            return userDao.List(user);
        }

        public List<User> List()
        {
            var user = new User();
            user.Name = string.Empty;
            return List(user);
        }
    }
}
