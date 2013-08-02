package com.hus.erp.service;

import java.util.ArrayList;
import java.util.List;

import com.hus.erp.dao.impl.BaseDaoImpl;
import com.hus.erp.model.Login;
import com.hus.erp.service.impl.QuoteMgrImpl;
import com.hus.erp.view.OrderGrid;

public class QuoteMgr implements QuoteMgrImpl
{
    private BaseDaoImpl baseDao;
    
    public QuoteMgr(BaseDaoImpl basedao)
    {
        this.baseDao = basedao;
    }
    
    public List<OrderGrid> queryAllQuote(Login login)
    {
        List<OrderGrid> list = new ArrayList<OrderGrid>();
        for (int i = 0; i < 10; i++)
        {
            OrderGrid grid = new OrderGrid();
            grid.setId("id" + i);
            grid.setMyid("myid" + i);
            grid.setMakeName("dfd" + i);
            list.add(grid);
        }
        return list;
    }
    
}
