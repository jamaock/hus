package com.hus.erp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hus.erp.dao.impl.BaseDaoImpl;

public class BaseDao<T> extends HibernateDaoSupport implements BaseDaoImpl<T>
{
    
    public List<Object> findBysql( final String sql)
    {
        Object obj = null;
        try
        {
            obj = this.getHibernateTemplate().executeFind(new HibernateCallback()
            {
                public Object doInHibernate(Session session)
                    throws HibernateException, SQLException
                {
                    return session.createSQLQuery(sql).list();
                }
            });
        }
        catch (DataAccessException e)
        {
            e.printStackTrace();
        }
        return (List<Object>)obj;
    }
    
}
