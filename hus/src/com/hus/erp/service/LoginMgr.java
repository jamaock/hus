package com.hus.erp.service;

import java.util.Date;
import java.util.List;

import com.hus.erp.dao.impl.BaseDaoImpl;
import com.hus.erp.service.impl.LoginMgrImpl;

public class LoginMgr implements LoginMgrImpl
{
    private BaseDaoImpl baseDao;
    
    public LoginMgr(BaseDaoImpl baseDao)
    {
        this.baseDao = baseDao;
    }
    
    public void checkLoginIslegal()
    {
    }
}
