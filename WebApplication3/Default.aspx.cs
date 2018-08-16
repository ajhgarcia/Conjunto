using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonCargar_Click(object sender, EventArgs e)
        {
            using( var connexion =  new DB.db_albepruebae3Entities())
            {
                var productos = connexion.productos.ToList();
                if (txtBusqueda.Text.Length > 0)
                {
                    var stringa = txtBusqueda.Text.Trim().ToLower();
                    productos = productos.Where(t=>
                        t.marca.ToLower().Contains(stringa)
                        ||
                        t.nombre.ToLower().Contains(stringa)
                    
                    ).ToList();
                }


                tablaProductos.DataSource = productos;
                tablaProductos.DataBind();
            }
        }
    }
}