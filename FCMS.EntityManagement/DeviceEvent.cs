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
    
    public partial class DeviceEvent
    {
        public int DeviceEventId { get; set; }
        public int DeviceId { get; set; }
        public string EventName { get; set; }
        public string Description { get; set; }
        public System.DateTime EventDateTime { get; set; }
        public string EventSource { get; set; }
        public Nullable<int> AssignedUserId { get; set; }
    
        public virtual Device Device { get; set; }
    }
}
