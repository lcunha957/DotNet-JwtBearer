using Microsoft.EntityFrameworkCore;
using ProjOfMec_API.Models;
using System.Diagnostics.CodeAnalysis;

namespace ProjOfMec_API.Data
{
    public class OfMecContext : DbContext
    {
        protected readonly IConfiguration Configuration;

        public OfMecContext(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        { // connect to sql server with connection string from app settings
            options.UseSqlServer(Configuration.GetConnectionString("StringConexaoSQLServer"));
        }

        public DbSet<Cliente>? Cliente { get; set; }

        public DbSet<OrdemDeServico>? OrdemDeServico { get; set; }

        public DbSet<User>? Usuario { get; set; }
        
        public DbSet<Veiculo>? Veiculo { get; set; }
    }
}
