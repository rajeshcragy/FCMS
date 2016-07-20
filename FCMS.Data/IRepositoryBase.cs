using System;
using System.Linq;
using System.Linq.Expressions;

namespace FCMS.Data
{
    public interface IRepositoryBase<TEntity>
    {
        TEntity Create();
        TEntity Create(TEntity entity);

        TEntity Update(TEntity entity);

        void Delete(long id);
        void Delete(TEntity entity);

        void Delete(Expression<Func<TEntity, bool>> where);
        TEntity FindOne(Expression<Func<TEntity, bool>> where = null);

        TEntity FindById(long id);
        IQueryable<TEntity> FindAll(Expression<Func<TEntity, bool>> where = null);
        IQueryable<TEntity> FindAllWithPaging<TKey>(int pageNumber, int pageSize, out int totalRecords, bool orderbyDesc, Expression<Func<TEntity, bool>> where = null, Expression<Func<TEntity, TKey>> orderBy = null);
        
        IQueryable<T> Set<T>() where T : class;

        bool SaveChanges();
    }
}
