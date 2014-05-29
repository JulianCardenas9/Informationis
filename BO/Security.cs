using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text;
using Entity;

/**
*
* Autor: cegarciaa
* Fecha: 29/05/2014
* Descripción: Clase que se encarga de validar el rol y sus correspondientes
*				permisos.
*
* Autor: cegarciaa
* Fecha: 29/05/2014
* Cambio: Se adiciona log de cambios para auditorias.
**/
namespace BO
{
    public class Security
    {
        public static bool Validate(PageEnum page, RolEnum rol){

            if (rol == RolEnum.Agent)
            {
                if (page == PageEnum.Agent)
                    return true;
                else
                    return false;
            }

            return true;
        }
    }
}
