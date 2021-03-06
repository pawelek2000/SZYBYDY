//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AJDENTITY.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Grade
    {
        public int Id { get; set; }
        public int Student_Id { get; set; }
        public int Subject_Id { get; set; }
        [RegularExpression("1|1.5|2|2.5|3|3.5|4|4.5|5|5.5|6", ErrorMessage = "Ocena musi by? w przedziale 1-6.")]
        public string Value { get; set; }
        public bool IsFinal { get; set; }
        public System.DateTime AddedDate { get; set; }
    
        public virtual Student Student { get; set; }
        public virtual Subject Subject { get; set; }
    }
}
