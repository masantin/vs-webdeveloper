using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Data.Repository.Interface
{
    public interface IAppUnitOfWork : IDisposable
    {
        IFloorsRepository FloorsRepository { get; set; }
        IFloorTypesRepository FloorTypesRepository { get; set; }
        IStructuralColumnsRepository StructuralColumnsRepository { get; set; }
        IStructuralColumnTypesRepository StructuralColumnTypesRepository { get; set; }
        IStructuralFoundationsRepository StructuralFoundationsRepository { get; set; }
        IStructuralFoundationTypesRepository StructuralFoundationTypesRepository { get; set; }
        IStructuralFramingRepository StructuralFramingRepository { get; set; }
        IStructuralFramingTypesRepository StructuralFramingTypesRepository { get; set; }
        IWallsRepository WallsRepository { get; set; }
        IWallTypesRepository WallTypesRepository { get; set; }
        IElementQueryRepository ElementQueryRepository { get; set; }
        IUsersRepository UsersRepository { get; set; }

        int Complete();
    }
}