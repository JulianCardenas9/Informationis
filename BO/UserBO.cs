﻿using System;
using System.Collections.Generic;
using DAO;
using Entity;

/**
*
* Autor: cegarciaa
* Fecha: 29/05/2014
* Descripción: Clase que representa el objeto de negocio (Bussiness Object)
*				Usuario. Contiene las operaciones CRUD para los usuarios.
*
* Autor: cegarciaa
* Fecha: 29/05/2014
* Cambio: Se adiciona log de cambios para auditorias.
**/
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
