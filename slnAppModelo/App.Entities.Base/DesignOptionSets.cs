namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class DesignOptionSets
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdeopciónprimaria { get; set; }

        [StringLength(255)]
        public string Nombre { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }
    }
}
