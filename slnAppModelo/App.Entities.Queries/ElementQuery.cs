using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Entities.Queries
{
    public class ElementQuery
    {
        public string Tabla_origen { get; set; }
        public int id { get; set; }
        public string Elemento { get; set; }
        public double Volumen { get; set; }
        public double Area { get; set; }
        public string NivelDelElemento { get; set; }
        public string EstadoDeAvance { get; set; }
        public string Sector { get; set; }       

    }
}
