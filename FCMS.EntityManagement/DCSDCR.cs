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
    
    public partial class DCSDCR
    {
        public int DCSDCRId { get; set; }
        public int DCSMasterId { get; set; }
        public int DCRMasterId { get; set; }
    
        public virtual DCSMaster DCSMaster { get; set; }
        public virtual DCRMaster DCRMaster { get; set; }
    }
}
