﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FCMSERPEntities : DbContext
    {
        public FCMSERPEntities()
            : base("name=FCMSERPEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Contract_Details> Contract_Details { get; set; }
        public virtual DbSet<Employee_Master> Employee_Master { get; set; }
        public virtual DbSet<State_Master> State_Master { get; set; }
        public virtual DbSet<Bank_Master> Bank_Master { get; set; }
        public virtual DbSet<Branch_Master> Branch_Master { get; set; }
        public virtual DbSet<Category_Master> Category_Master { get; set; }
        public virtual DbSet<Contract_Master> Contract_Master { get; set; }
        public virtual DbSet<Customer_Master> Customer_Master { get; set; }
        public virtual DbSet<DCR_Master> DCR_Master { get; set; }
        public virtual DbSet<DCS_Master> DCS_Master { get; set; }
        public virtual DbSet<Guarantor_Master> Guarantor_Master { get; set; }
        public virtual DbSet<Other_Branch_Master> Other_Branch_Master { get; set; }
        public virtual DbSet<Trade_Advance_Master> Trade_Advance_Master { get; set; }
    }
}