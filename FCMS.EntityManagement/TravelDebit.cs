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
    
    public partial class TravelDebit
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TravelDebit()
        {
            this.TravelDebitDetails = new HashSet<TravelDebitDetail>();
        }
    
        public int TravelDebitId { get; set; }
        public string VoucherNo { get; set; }
        public Nullable<decimal> Feedback { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public string Date { get; set; }
        public string CheckedWith { get; set; }
        public Nullable<decimal> RelationShip { get; set; }
        public string ReceiptNo { get; set; }
        public Nullable<decimal> UserID { get; set; }
        public string Gen_Datetime { get; set; }
        public string GPSLocation { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TravelDebitDetail> TravelDebitDetails { get; set; }
    }
}