package com.hus.erp.service.impl;

import java.util.List;

import com.hus.erp.model.Login;
import com.hus.erp.view.OrderGrid;

public interface QuoteMgrImpl
{
    
    public abstract List<OrderGrid> queryAllQuote(Login login);
    
}
