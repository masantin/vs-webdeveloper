namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Grids
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        [StringLength(255)]
        public string Nombre { get; set; }

        public int? Cajadereferencia { get; set; }

        public virtual GridTypes GridTypes { get; set; }
    }
}
