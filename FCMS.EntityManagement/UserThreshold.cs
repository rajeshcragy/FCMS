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
    
    public partial class UserThreshold
    {
        public int UserThresholdId { get; set; }
        public int UserId { get; set; }
        public decimal Base { get; set; }
        public decimal Next { get; set; }
        public decimal Far { get; set; }
        public int NextPin { get; set; }
        public bool NextPinUsed { get; set; }
        public string FarPin { get; set; }
        public bool FarPinUsed { get; set; }
    
        public virtual User User { get; set; }
    }
}
