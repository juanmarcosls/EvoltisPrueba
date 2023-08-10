using PruebaTecnicaEvoltis;
using System.Data.Entity;

public class MiDbContext : DbContext
{
    public MiDbContext() : base("Data Source=DESKTOP-0GVT57E; Initial Catalog=PruebaTecnicaEvoltis; integrated security=true")
    {
    }

    public DbSet<Empleados> Empleados { get; set; }
}

