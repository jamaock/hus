package com.hus.erp.action;

import com.hus.erp.action.base.BaseAction;
import com.hus.erp.service.impl.LoginMgrImpl;
import com.hus.erp.view.LoginView;

public class LoginAction extends BaseAction
{
    
    private LoginMgrImpl loginService;
    
    private LoginView lgView;
    
    public LoginAction(LoginMgrImpl loginService)
    {
        this.loginService = loginService;
    }
    
    public LoginView getLgView()
    {
        return lgView;
    }
    
    public void setLgView(LoginView lgView)
    {
        this.lgView = lgView;
    }
    
    public String toin()
        throws Exception
    {
        loginService.checkLoginIslegal();
        return "login_success";
    }
}
