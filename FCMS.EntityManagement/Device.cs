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
    
    public partial class Device
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Device()
        {
            this.DeviceBlocks = new HashSet<DeviceBlock>();
            this.DeviceEvents = new HashSet<DeviceEvent>();
            this.DeviceLocations = new HashSet<DeviceLocation>();
            this.Updates = new HashSet<Update>();
        }
    
        public int DeviceId { get; set; }
        public string DeviceTypeName { get; set; }
        public int BranchId { get; set; }
        public string SerialNo { get; set; }
        public string IMEI { get; set; }
        public string IsLocked { get; set; }
        public string IsBlocked { get; set; }
        public string IsDeleted { get; set; }
        public Nullable<decimal> LastConnectedLatitude { get; set; }
        public Nullable<decimal> LastConnectedLongitude { get; set; }
        public Nullable<System.DateTime> LastConnectedTime { get; set; }
        public string PrinterMACId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DeviceBlock> DeviceBlocks { get; set; }
        public virtual Branch Branch { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DeviceEvent> DeviceEvents { get; set; }
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DeviceLocation> DeviceLocations { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Update> Updates { get; set; }
    }
}
