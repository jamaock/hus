package com.hus.erp.dao.impl;

import java.util.List;

public interface BaseDaoImpl<T>
{
    
    public abstract List<Object> findBysql(String sql);
    
}
