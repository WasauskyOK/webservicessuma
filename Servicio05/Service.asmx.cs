using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Servicio05
{
    /// <summary>
    /// Descripción breve de ServicePrueba02
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
     [System.Web.Script.Services.ScriptService]
    public class ServicePrueba02 : System.Web.Services.WebService
    {

      
        [WebMethod]
        public  int Sumar(int num1,int num2)
        {
            return num1 + num2;
        }
        [WebMethod]
        public string Ga()
        {
            return "Hola como estas";
        }

    }
}
