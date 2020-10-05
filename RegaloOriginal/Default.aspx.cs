using System;
using System.Data;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace RegaloOriginal
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DataTable dt = Session["datos"] as DataTable;
            GridViewRow carrito = TC.SelectedRow;
            GridViewRow favorito = TF.SelectedRow;
            if (DDL1.SelectedValue == "1")
            {
                DataTable vc = null;
                if (Session["dt"] != null)
                    vc = Session["dt"] as DataTable;
                else
                {
                    vc = new DataTable();
                    vc.Columns.Add("Cantidad");//0
                    vc.Columns.Add("Nombre");//1
                    vc.Columns.Add("Precio");//2
                    vc.Columns.Add("Subtotal");//3
                   
                }

                DataRow registro = vc.NewRow();
                int Cant = Convert.ToInt32(Vcan.Text);
                int pre = Convert.ToInt32(Vpre.Text);
                registro[0] = Vcan.Text;
                registro[1] = Vnom.Text;
                registro[2] = Vpre.Text;
                registro[3] = pre * Cant;

                vc.Rows.Add(registro);

                TC.DataSource = vc;
                TC.DataBind();

                Session["dt"] = vc;
            }        
            else {
                DataTable vc2 = null;
                if (Session["dt2"] != null)
                    vc2 = Session["dt2"] as DataTable;
                else
                {
                    vc2 = new DataTable();
                    vc2.Columns.Add("Nombre");//0
                    vc2.Columns.Add("Precio");//1
                    
                }

                DataRow registro = vc2.NewRow();                
                registro[0] = Vnom.Text;
                registro[1] = Vpre.Text;

                vc2.Rows.Add(registro);

                TF.DataSource = vc2;
                TF.DataBind();

                Session["dt2"] = vc2;
            }
        }
    }
}