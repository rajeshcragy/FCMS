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
    
    public partial class DeviceLocation
    {
        public int DeviceLocationId { get; set; }
        public int DeviceId { get; set; }
        public decimal Latitude { get; set; }
        public decimal Longitude { get; set; }
        public decimal Altitude { get; set; }
        public System.DateTime GPSDateTime { get; set; }
        public System.DateTime ReceivedDateTime { get; set; }
    
        public virtual Device Device { get; set; }
    }
}
