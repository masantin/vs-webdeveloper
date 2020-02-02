using App.Data.DataAccess;
using App.Data.Repository.Interface;
using App.Entities.Base;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Data.Repository
{
    public class StructuralColumnsRepository : GenericRepository<StructuralColumns>, IStructuralColumnsRepository
    {
        public StructuralColumnsRepository(DbContext context) : base(context)
        {
        }
        public bool Remove(int id)
        {
            var result = _context.Database.ExecuteSqlCommand("delete from StructuralColumns " +
                    "where Id = @myid ", new { myid = id });
            return Convert.ToBoolean(result);
        }
        
    }
}
