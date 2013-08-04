package com.hus.erp.service;

import java.util.ArrayList;
import java.util.List;

import com.hus.erp.dao.impl.BaseDaoImpl;
import com.hus.erp.model.Login;
import com.hus.erp.service.impl.TaskMgrImpl;
import com.hus.erp.view.TreeNode;;

public class TaskMgr implements TaskMgrImpl
{
    private BaseDaoImpl baseDao;
    
    public TaskMgr(BaseDaoImpl basedao)
    {
        this.baseDao = basedao;
    }
    
    public List<TreeNode> findLeftMenuByLogin(Login login)
    {
        String sql = "SELECT TA.TSK_ID,TA.TSK_PID,TA.TSK_URL,TXT.TSK_NAME,TXT.TSK_TITLE"
                + " FROM TASK ta INNER JOIN TASK_TXT txt on TA.TSK_ID = TXT.TSK_ID"
                + " WHERE TA.STATUS = 'A' and TXT.STATUS = 'A' limit 5";
        List<Object> dbList = baseDao.findBysql(sql);
        
        List<TreeNode> list = new ArrayList<TreeNode>();
        String title= null;
        String url= null;
        for (Object object : dbList)
        {
            Object[] temp = (Object[])object;
            TreeNode tm = new TreeNode();
            tm.setId(temp[0].toString());
            tm.setName(temp[3].toString());
            // pid 为空，根目录
            if (temp[1] == null)
            {
                tm.setPId(null);
            }
            else
            {
                url = temp[2].toString();
                title = temp[4] == null ? null : temp[4].toString();
                tm.setPId(temp[1].toString());
                tm.setClick("addTab('" + tm.getId() + "','" + title + "','" + url + "')");
            }
            // tm.setFile(null);
            // tm.setUrl("testurl"+tm.getId());
            
            list.add(tm);
        }
        
        return list;
    }
}
