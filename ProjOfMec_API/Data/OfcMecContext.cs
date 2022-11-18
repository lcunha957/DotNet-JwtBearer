using Microsoft.EntityFrameworkCore;
using ProjOfMec_API.Models;
using System.Diagnostics.CodeAnalysis;

namespace ProjOfMec_API.Data
{
    public class OfMecContext : DbContext
    {
        public OfMecContext(DbContextOptions<OfMecContext> options) : base(options) { }

        public DbSet<Cliente>? Cliente { get; set; }

        public DbSet<OrdemDeServico>? OrdemDeServico { get; set; }

        public DbSet<Usuario>? Usuario { get; set; }
        public DbSet<Veiculo>? Veiculo { get; set; }
    }
}
