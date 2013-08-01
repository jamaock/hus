package com.hus.erp.action;

import java.util.List;

import com.hus.erp.action.base.BaseAction;
import com.hus.erp.model.Login;
import com.hus.erp.service.impl.TaskMgrImpl;
import com.hus.erp.view.TreeNode;

public class TaskAction extends BaseAction
{
    private TaskMgrImpl taskService;
    
    public TaskAction(TaskMgrImpl taskService)
    {
        this.taskService = taskService;
    }
    
    public String geneLeftMenu()
        throws Exception
    {
        Login login = (Login)request.getSession().getAttribute("login");
        List<TreeNode> treelist = taskService.findLeftMenuByLogin(login);
        printByJson(treelist);
        
        return null;
    }
    
}
