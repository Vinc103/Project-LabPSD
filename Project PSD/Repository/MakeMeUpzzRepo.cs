using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Project_PSD.Repository
{
    public class MakeMeUpzzRepo
    {
        public static EcommerceDbEntities db = new EcommerceDbEntities();
        public interface IRepository<T> where T : class
        {
            IEnumerable<T> GetAll();
            T Get(int id);
            void Add(T MakeupBrands);
            void Update(T MakeupBrands);
            void Delete(T MakeupBrands);
        }

        public class Repository<T> : IRepository<T> where T : class
        {
            private readonly EcommerceDbEntities _context;
            private readonly DbSet<T> _dbSet;

            public Repository(EcommerceDbEntities context)
            {
                _context = context;
                _dbSet = _context.Set<T>();
            }

            public IEnumerable<T> GetAll()
            {
                return _dbSet.ToList();
            }

            public T Get(int id)
            {
                return _dbSet.Find(id);
            }

            public void Add(T entity)
            {
                _dbSet.Add(entity);
                _context.SaveChanges();
            }

            public void Update(T entity)
            {
                _context.Entry(entity).State = EntityState.Modified;
                _context.SaveChanges();
            }

            public void Delete(T MakeupBrandId)
            {
                _dbSet.Remove(MakeupBrandId);
                _context.SaveChanges();
            }
        }
    }
}