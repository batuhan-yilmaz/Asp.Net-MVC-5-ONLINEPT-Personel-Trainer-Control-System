//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace onlinept.Models.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Web;
    
    public partial class home
    {
        public int homeid { get; set; }
        public int mylistget { get; set; }
        public int usersget { get; set; }
        public string subject { get; set; }
        public string descriptions { get; set; }
        [Display(Name = "Date Edit")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy.MM.dd}")]
        public System.DateTime? date { get; set; }
        public virtual HttpPostedFileBase content1file { get; set; }
        public string content1 { get; set; }
        public virtual HttpPostedFileBase content2file { get; set; }
        public string content2 { get; set; }
        public virtual HttpPostedFileBase content3file { get; set; }
        public string content3 { get; set; }
        public virtual HttpPostedFileBase content4file { get; set; }
        public string content4 { get; set; }
        public virtual HttpPostedFileBase content5file { get; set; }
        public string content5 { get; set; }
        public virtual HttpPostedFileBase content6file { get; set; }
        public string content6 { get; set; }
        public string color { get; set; }
        public string protein { get; set; }
        public string carb { get; set; }
        public string fat { get; set; }
        public string calori { get; set; }
    
        public virtual mylist mylist { get; set; }
        public virtual users users { get; set; }
    }
}
