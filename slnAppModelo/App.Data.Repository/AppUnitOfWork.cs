using App.Data.DataAccess;
using App.Data.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Data.Repository
{
    public class AppUnitOfWork : IAppUnitOfWork
    {
        private readonly DbContext _context;

        public AppUnitOfWork()
        {
            _context = new DBModel();

            this.FloorsRepository = new FloorsRepository(_context);
            this.FloorTypesRepository = new FloorTypesRepository(_context);
            this.StructuralColumnsRepository = new StructuralColumnsRepository(_context);
            this.StructuralColumnTypesRepository = new StructuralColumnTypesRepository(_context);
            this.StructuralFoundationsRepository = new StructuralFoundationsRepository(_context);
            this.StructuralFoundationTypesRepository = new StructuralFoundationTypesRepository(_context);
            this.StructuralFramingRepository = new StructuralFramingRepository(_context);
            this.StructuralFramingTypesRepository = new StructuralFramingTypesRepository(_context);
            this.WallsRepository = new WallsRepository(_context);
            this.WallTypesRepository = new WallTypesRepository(_context);
            this.ElementQueryRepository = new ElementQueryRepository(_context);
            this.UsersRepository = new UsersRepository(_context);

        }

        public IFloorsRepository FloorsRepository { get; set; }
        public IFloorTypesRepository FloorTypesRepository { get; set; }
        public IStructuralColumnsRepository StructuralColumnsRepository { get; set; }
        public IStructuralColumnTypesRepository StructuralColumnTypesRepository { get; set; }
        public IStructuralFoundationsRepository StructuralFoundationsRepository { get; set; }
        public IStructuralFoundationTypesRepository StructuralFoundationTypesRepository { get; set; }
        public IStructuralFramingRepository StructuralFramingRepository { get; set; }
        public IStructuralFramingTypesRepository StructuralFramingTypesRepository { get; set; }
        public IWallsRepository WallsRepository { get; set; }
        public IWallTypesRepository WallTypesRepository { get; set; }
        public IElementQueryRepository ElementQueryRepository { get; set; }
        public IUsersRepository UsersRepository { get; set; }

        public int Complete()
        {
            return _context.SaveChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
