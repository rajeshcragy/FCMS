//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FCMS.EntityManagement
{
    using System;
    using System.Collections.Generic;
    
    public partial class Guarantor
    {
        public int GuarantorId { get; set; }
        public int ContractId { get; set; }
        public int CustomerId { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Contract Contract { get; set; }
    }
}
