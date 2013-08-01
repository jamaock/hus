package com.hus.erp.service.impl;

import java.util.List;

import javax.swing.tree.TreeModel;

import com.hus.erp.model.Login;
import com.hus.erp.view.TreeNode;

public interface TaskMgrImpl
{

   public abstract List<TreeNode> findLeftMenuByLogin(Login login);
}
