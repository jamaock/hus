package com.hus.erp.action.sale;

import java.awt.geom.Area;
import java.util.ArrayList;
import java.util.List;

import com.hus.erp.action.base.BaseAction;
import com.hus.erp.model.Login;
import com.hus.erp.service.impl.QuoteMgrImpl;
import com.hus.erp.view.OrderGrid;

public class QuoteAction extends BaseAction
{
    private static final long serialVersionUID = -8101346532189987995L;
    
    private QuoteMgrImpl quoteService;
    
    public QuoteAction(QuoteMgrImpl quoteService)
    {
        this.quoteService = quoteService;
    }

    public String execute()
        throws Exception
    {
        Login login = (Login)request.getSession().getAttribute("login");
        List<OrderGrid> list = quoteService.queryAllQuote(login);
        printByJson(list);
        return null;
    }
    
}
