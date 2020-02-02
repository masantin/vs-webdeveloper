using App.Data.Repository.Interface;
using App.Entities.Queries;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Data.Repository
{
    public class ElementQueryRepository : GenericRepository<ElementQuery>, IElementQueryRepository
    {
        public ElementQueryRepository(DbContext context) : base(context)
        {         

        }
        public IEnumerable<ElementQuery> GetElements()
        {
            return _context.Database.SqlQuery<ElementQuery>(
                "usp_GetElements").ToList();
        }
    }
}
