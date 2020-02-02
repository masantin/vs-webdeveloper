namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("RevitDBLinkInfo")]
    public partial class RevitDBLinkInfo
    {
        [Key]
        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Value { get; set; }
    }
}
