using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjercicioPropuesto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void limpiar()
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                txtNombreProducto.Text = "";
                txtStockProducto.Text = "";
                txtPrecioProducto.Text = "";
            }else if (RadioButtonList1.SelectedIndex == 1)
            {
                txtNombreCliente.Text = "";
                txtApellidosCliente.Text = "";
                txtDireccionCliente.Text = "";
                txtTelefonoCliente.Text = "";
            }
            else
            {
                txtNombreProveedor.Text = "";
                txtRucProveedor.Text = "";
                txtDireccionProveedor.Text = "";
            }
            
            
            
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            limpiar();
            imgResult.ImageUrl = "";
            lblResult.InnerText = "";
            MultiView1.ActiveViewIndex = Int32.Parse(RadioButtonList1.SelectedValue);
        }

        protected void btnSaveProducto_Click(object sender, EventArgs e)
        {
            if (loadImagenProducto.HasFile)
            {
                loadImagenProducto.SaveAs(@"E:\A-Trabajos Universidad\6to Semestre\Desarrollo App\Practicas\Practica 03\EjercicioPropuesto\EjercicioPropuesto\upload\Productos\"
                + loadImagenProducto.FileName);
            }
            
            string result = "Nombre: "+txtNombreProducto.Text+"\nStock: "+txtStockProducto.Text
                +"\nPrecio: "+txtPrecioProducto.Text;
            lblResult.InnerText = result;
            imgResult.ImageUrl="../upload/Productos/" + loadImagenProducto.FileName;
            limpiar();
        }

        protected void btnSaveCliente_Click(object sender, EventArgs e)
        {
            if (loadFotoCliente.HasFile)
            {
                loadFotoCliente.SaveAs(@"E:\A-Trabajos Universidad\6to Semestre\Desarrollo App\Practicas\Practica 03\EjercicioPropuesto\EjercicioPropuesto\upload\Clientes\"
                + loadFotoCliente.FileName);
            }
            string result = "Nombre: " + txtNombreCliente.Text + "\nApellido: " + txtApellidosCliente.Text + "\nDireccion: "
                + txtDireccionCliente.Text + "\nTelefono: "+txtTelefonoCliente.Text;
            lblResult.InnerText = result;
            imgResult.ImageUrl = "../upload/Clientes/" + loadFotoCliente.FileName;
            limpiar();
        }

        protected void btnSaveProveedor_Click(object sender, EventArgs e)
        {
            if (loadLogoProveedor.HasFile)
            {
                loadLogoProveedor.SaveAs(@"E:\A-Trabajos Universidad\6to Semestre\Desarrollo App\Practicas\Practica 03\EjercicioPropuesto\EjercicioPropuesto\upload\Proveedores\"
                + loadLogoProveedor.FileName);
            }
            string result = "Nombre: " + txtNombreProveedor.Text + "\nRUC: " + txtRucProveedor.Text + "\nDireccion: "
                + txtDireccionProveedor.Text;
            lblResult.InnerText = result;
            imgResult.ImageUrl = "../upload/Proveedores/" + loadLogoProveedor.FileName;
            limpiar();
        }
    }
}