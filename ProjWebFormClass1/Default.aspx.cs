using ProjWebFormClass1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjWebFormClass1
{
    public partial class Default : System.Web.UI.Page
    {

        public static List<Animal> animais = new List<Animal>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCriar_Click(object sender, EventArgs e)
        {
            Animal animal = new Animal();

            animal.Nome = TxtNomeAnimal.Text;
            animal.Raca = TxtRacaAnimal.Text;
            animal.DataNascimento = TxtDataNasci.Text;
            animal.Peso = Convert.ToDouble(TxtPesoAnimal.Text);
            animal.Sexo = ddlSexo.SelectedValue;

            animal.dono = new Dono();
            animal.dono.Nome = TxtNomeDono.Text;

            animais.Add(animal);

            LoadGrid();
        }

        private void LoadGrid()
        {
            GdvAnimal.DataSource = animais;
            GdvAnimal.DataBind();
        }

    }
}