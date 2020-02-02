using App.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Data.Repository.Interface
{
    public interface IUsersRepository
    {
        User ValidateUser(string email, string password);
        User CreateUser(User user);
    }
}
