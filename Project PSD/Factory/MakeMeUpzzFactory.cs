using Project_PSD.Handler;
using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Factory
{
    public class MakeMeUpzzFactory
    {
        public static class RepositoryFactory
        {
            public static EcommerceDbEntities db = new EcommerceDbEntities();

            public static IRepository<User> GetUserRepository()
            {
                
                return new Repository<User>(db);
            }

            public static IRepository<TransactionHeader> GetTransactionHeaderRepository()
            {
                return new Repository<TransactionHeader>(db);
            }

            public static IRepository<TransactionDetail> GetTransactionDetailRepository()
            {
                return new Repository<TransactionDetail>(db);
            }

            public static IRepository<Cart> GetCartRepository()
            {
                return new Repository<Cart>(db);
            }

            public static IRepository<Makeup> GetMakeupRepository()
            {
                return new Repository<Makeup>(db);
            }

            public static IRepository<MakeupBrand> GetMakeupBrandRepository()
            {
                return new Repository<MakeupBrand>(db);
            }

            public static IRepository<MakeupType> GetMakeupTypeRepository()
            {
                return new Repository<MakeupType>(db);
            }
        }


       public static class HandlerFactory
{
    public static UserHandler GetUserHandler()
    {
        return new UserHandler(RepositoryFactory.GetUserRepository());
    }

    public static TransactionHeaderHandler GetTransactionHeaderHandler()
    {
        return new TransactionHeaderHandler(RepositoryFactory.GetTransactionHeaderRepository());
    }

    public static TransactionDetailHandler GetTransactionDetailHandler()
    {
        return new TransactionDetailHandler(RepositoryFactory.GetTransactionDetailRepository());
    }

    public static CartHandler GetCartHandler()
    {
        return new CartHandler(RepositoryFactory.GetCartRepository());
    }

    public static MakeupHandler GetMakeupHandler()
    {
        return new MakeupHandler(RepositoryFactory.GetMakeupRepository());
    }

    public static MakeupBrandHandler GetMakeupBrandHandler()
    {
        return new MakeupBrandHandler(RepositoryFactory.GetMakeupBrandRepository());
    }

    public static MakeupTypeHandler GetMakeupTypeHandler()
    {
        return new MakeupTypeHandler(RepositoryFactory.GetMakeupTypeRepository());
    }
}

    }
}