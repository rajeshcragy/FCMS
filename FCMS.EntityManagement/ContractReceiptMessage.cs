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
    
    public partial class ContractReceiptMessage
    {
        public int ContractReceiptMessageId { get; set; }
        public int ContractId { get; set; }
        public string Message { get; set; }
        public System.DateTime ValidFrom { get; set; }
        public System.DateTime ValidTo { get; set; }
    
        public virtual Contract Contract { get; set; }
    }
}