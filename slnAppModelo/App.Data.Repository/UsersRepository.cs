using App.Data.Repository.Interface;
using App.Entities.Base;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace App.Data.Repository
{    
    public class UsersRepository : GenericRepository<User>, IUsersRepository
    {
        public UsersRepository(DbContext context) : base(context)
        {
        }

        public User ValidateUser(string email, string password)
        {
            return _context.Database.SqlQuery<User>(
                "dbo.usp_ValidateUser @email, @password",
                new SqlParameter("@email", email),
                new SqlParameter("@password", password)
             ).FirstOrDefault() ;
            
        }

        public User CreateUser(User user)
        {

            return _context.Database.SqlQuery<User>(
                "dbo.usp_CreateUser @email, @password, @firstName, @lastName",
                new SqlParameter("@email", user.Email),
                new SqlParameter("@password", user.Password),
                new SqlParameter("@firstName", user.FirstName),
                new SqlParameter("@lastName", user.LastName)

             ).FirstOrDefault();
           
        }
    }
}
