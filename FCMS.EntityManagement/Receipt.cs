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
    
    public partial class Receipt
    {
        public string ReceiptNo { get; set; }
        public string ReceiptDt { get; set; }
        public Nullable<decimal> ReceiptAmt { get; set; }
        public string Mode { get; set; }
        public Nullable<decimal> InstrumentAmt { get; set; }
        public Nullable<decimal> InstrumentNo { get; set; }
        public string InstrumentDt { get; set; }
        public Nullable<decimal> BankID { get; set; }
        public string BranchName { get; set; }
        public Nullable<decimal> MICR { get; set; }
        public string Pay_Clear_location { get; set; }
        public Nullable<decimal> Remitted_By { get; set; }
        public string Remitter_Name { get; set; }
        public Nullable<decimal> Remitter_Relationship { get; set; }
        public string PanNo { get; set; }
        public Nullable<decimal> Rec_Category { get; set; }
        public string BranchCode { get; set; }
        public Nullable<decimal> MachineID { get; set; }
        public string Tower_Name { get; set; }
        public Nullable<decimal> UserID { get; set; }
        public string Gen_Datetime { get; set; }
    }
}