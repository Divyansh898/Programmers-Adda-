﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProgrammersAdda.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class pddbEntities : DbContext
    {
        public pddbEntities()
            : base("name=pddbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Comment> Comments { get; set; }
        public DbSet<Enquiry> Enquiries { get; set; }
        public DbSet<Login> Logins { get; set; }
        public DbSet<Programmer> Programmers { get; set; }
        public DbSet<Registration> Registrations { get; set; }
        public DbSet<Review> Reviews { get; set; }
        public DbSet<UploadError> UploadErrors { get; set; }
    }
}
