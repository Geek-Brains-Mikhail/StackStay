﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Stackstay
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class user86_dbEntities4 : DbContext
    {
        private static user86_dbEntities4 _context;
        public static user86_dbEntities4 GetContext()
        {
            if (_context == null) _context = new user86_dbEntities4();
            return _context;
        }
        public user86_dbEntities4()
            : base("name=user86_dbEntities4")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AuthorAndRedDataUser> AuthorAndRedDataUser { get; set; }
        public virtual DbSet<BedType> BedType { get; set; }
        public virtual DbSet<Cities> Cities { get; set; }
        public virtual DbSet<RoomsHotel> RoomsHotel { get; set; }
    }
}
