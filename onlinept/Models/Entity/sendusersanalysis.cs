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

    public partial class sendusersanalysis
    {
        public int sendusersanalysisid { get; set; }
        public Nullable<int> mylistget { get; set; }
        public Nullable<int> usersget { get; set; }
        public string namesurname { get; set; }
        public string youremail { get; set; }
        public virtual HttpPostedFileBase content1file { get; set; }
        public string Content1 { get; set; }
        public virtual HttpPostedFileBase content2file { get; set; }
        public string Content2 { get; set; }
        public virtual HttpPostedFileBase content3file { get; set; }
        public string Content3 { get; set; }
        public string color { get; set; }
        [Display(Name = "Date Edit")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy.MM.dd}")]
        public System.DateTime? date { get; set; }

        public virtual mylist mylist { get; set; }
        public virtual users users { get; set; }
    }
}