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
    
    public partial class DCRMaster
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DCRMaster()
        {
            this.DCRReceipts = new HashSet<DCRReceipt>();
            this.DCSDCRs = new HashSet<DCSDCR>();
        }
    
        public int DCRMasterId { get; set; }
        public string DCRNumber { get; set; }
        public string Mode { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<decimal> UserId { get; set; }
        public Nullable<System.DateTime> Gen_Datetime { get; set; }
        public string GPSLocation { get; set; }
        public Nullable<decimal> Auth_UserID { get; set; }
        public string Auth_On { get; set; }
        public string Status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DCRReceipt> DCRReceipts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DCSDCR> DCSDCRs { get; set; }
    }
}
