using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;

namespace FCMS.Data
{
    public class RepositoryBase<TEntity, TContext> : IRepositoryBase<TEntity>, IDisposable
        where TEntity : class
        where TContext : DbContext
    {
        protected TContext Context;

        public RepositoryBase(DbContext dbContext)
        {
            Context = dbContext as TContext;
        }

        public virtual TEntity Create()
        {
            TEntity entity = Context.Set<TEntity>().Create();
            return Context.Set<TEntity>().Add(entity);
        }

        public virtual TEntity Create(TEntity entity)
        {
            return Context.Set<TEntity>().Add(entity);
        }

        public virtual TEntity Update(TEntity entity)
        {
            Context.Entry(entity).State = EntityState.Modified;
            return entity;
        }

        public virtual void Delete(long id)
        {
            var item = Context.Set<TEntity>().Find(id);
            Context.Set<TEntity>().Remove(item);
        }

        public virtual void Delete(TEntity entity)
        {
            Context.Set<TEntity>().Remove(entity);
        }

        public virtual void Delete(Expression<Func<TEntity, bool>> where)
        {
            var objects = Context.Set<TEntity>().Where(where).AsEnumerable();
            foreach (var item in objects)
            {
                Context.Set<TEntity>().Remove(item);
            }
        }

        public virtual TEntity FindById(long id)
        {
            return Context.Set<TEntity>().Find(id);
        }

        public virtual TEntity FindOne(Expression<Func<TEntity, bool>> where = null)
        {
            return FindAll(where).FirstOrDefault();
        }

        public IQueryable<T> Set<T>() where T : class
        {
            return Context.Set<T>();
        }

        public virtual IQueryable<TEntity> FindAll(Expression<Func<TEntity, bool>> where = null)
        {
            return null != where ? Context.Set<TEntity>().Where(where) : Context.Set<TEntity>();
        }

        public virtual IQueryable<TEntity> FindAllWithPaging<TKey>(int pageNumber, int pageSize, out int totalRecords, bool orderbyDesc, Expression<Func<TEntity, bool>> where = null, Expression<Func<TEntity, TKey>> orderBy = null)
        {
            IQueryable<TEntity> entities = null != where ? Context.Set<TEntity>().Where(where) : Context.Set<TEntity>();
            totalRecords = entities.Count();

            if (orderbyDesc)
                return entities.OrderByDescending(orderBy).Skip(pageSize * (pageNumber - 1)).Take(pageSize);
            else
                return entities.OrderBy(orderBy).Skip(pageSize * (pageNumber - 1)).Take(pageSize);
        }

        public virtual bool SaveChanges()
        {
            return 0 < Context.SaveChanges();
        }

        public void Dispose()
        {
            if (null != Context)
            {
                Context.Dispose();
            }
        }
    }

    public static class DistinctExtension
    {
        public static IEnumerable<TSource> DistinctBy<TSource, TKey>
        (this IEnumerable<TSource> source, Func<TSource, TKey> keySelector)
        {
            HashSet<TKey> seenKeys = new HashSet<TKey>();
            foreach (TSource element in source)
            {
                if (seenKeys.Add(keySelector(element)))
                {
                    yield return element;
                }
            }
        }
    }
}
