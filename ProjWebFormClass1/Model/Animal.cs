namespace ProjWebFormClass1.Model
{
    public class Animal
    {
        public string Nome { get; set; }

        public string Raca { get; set; }

        public Dono dono { get; set; }

        public string DataNascimento { get; set; }

        public double Peso { get; set; }

        public string Sexo { get; set; }
    }
}
