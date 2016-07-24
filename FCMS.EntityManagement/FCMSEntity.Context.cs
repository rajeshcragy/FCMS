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
    
    public partial class FCMSEntities : DbContext
    {
        public FCMSEntities()
            : base("name=FCMSEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserRole> UserRoles { get; set; }
        public virtual DbSet<UserUserRole> UserUserRoles { get; set; }
        public virtual DbSet<State> States { get; set; }
        public virtual DbSet<Bank> Banks { get; set; }
        public virtual DbSet<Branch> Branches { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<CustomerCustomInfo> CustomerCustomInfoes { get; set; }
        public virtual DbSet<Contract> Contracts { get; set; }
        public virtual DbSet<Guarantor> Guarantors { get; set; }
        public virtual DbSet<ContractCustomInfo> ContractCustomInfoes { get; set; }
        public virtual DbSet<Device> Devices { get; set; }
        public virtual DbSet<DeviceBlock> DeviceBlocks { get; set; }
        public virtual DbSet<DeviceEvent> DeviceEvents { get; set; }
        public virtual DbSet<Receipt> Receipts { get; set; }
        public virtual DbSet<ReceiptCancel> ReceiptCancels { get; set; }
        public virtual DbSet<ReceiptsRepresentation> ReceiptsRepresentations { get; set; }
        public virtual DbSet<ReceiptDetail> ReceiptDetails { get; set; }
        public virtual DbSet<ReceiptReprint> ReceiptReprints { get; set; }
        public virtual DbSet<ReceiptDenomination> ReceiptDenominations { get; set; }
        public virtual DbSet<DCRMaster> DCRMasters { get; set; }
        public virtual DbSet<DCRReceipt> DCRReceipts { get; set; }
        public virtual DbSet<DCSMaster> DCSMasters { get; set; }
        public virtual DbSet<DCSDCR> DCSDCRs { get; set; }
        public virtual DbSet<DeviceLocation> DeviceLocations { get; set; }
        public virtual DbSet<UserAttribute> UserAttributes { get; set; }
        public virtual DbSet<UserThreshold> UserThresholds { get; set; }
        public virtual DbSet<ContractReceiptMessage> ContractReceiptMessages { get; set; }
        public virtual DbSet<UserNotification> UserNotifications { get; set; }
        public virtual DbSet<TradeAdvanceMaster> TradeAdvanceMasters { get; set; }
        public virtual DbSet<UpdateReason> UpdateReasons { get; set; }
        public virtual DbSet<Update> Updates { get; set; }
        public virtual DbSet<ReceiptImage> ReceiptImages { get; set; }
        public virtual DbSet<CategoryGroup> CategoryGroups { get; set; }
        public virtual DbSet<CategoryItem> CategoryItems { get; set; }
        public virtual DbSet<TravelDebit> TravelDebits { get; set; }
        public virtual DbSet<TravelDebitDetail> TravelDebitDetails { get; set; }
    }
}
