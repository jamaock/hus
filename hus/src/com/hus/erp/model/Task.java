package com.hus.erp.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Task implements java.io.Serializable
{
    private static final long serialVersionUID = -999193689369491796L;
    
    // 任务号
    private Integer tskId;
    
    // 任务状态
    private String status;
    
    private Date created;
    
    private Date lastmod;
    
    private Integer tskPid;
    
    private String tskCode;
    
    private String tskUrl;
    
    private String tskPic;
    
    private String tskType;
    
    private String tskObject;
    
    private Set taskTxts = new HashSet(0);
    
    public Integer getTskId()
    {
        return tskId;
    }
    
    public void setTskId(Integer tskId)
    {
        this.tskId = tskId;
    }
    
    public String getStatus()
    {
        return status;
    }
    
    public void setStatus(String status)
    {
        this.status = status;
    }
    
    public Date getCreated()
    {
        return created;
    }
    
    public void setCreated(Date created)
    {
        this.created = created;
    }
    
    public Date getLastmod()
    {
        return lastmod;
    }
    
    public void setLastmod(Date lastmod)
    {
        this.lastmod = lastmod;
    }
    
    public Integer getTskPid()
    {
        return tskPid;
    }
    
    public void setTskPid(Integer tskPid)
    {
        this.tskPid = tskPid;
    }
    
    public String getTskCode()
    {
        return tskCode;
    }
    
    public void setTskCode(String tskCode)
    {
        this.tskCode = tskCode;
    }
    
    public String getTskUrl()
    {
        return tskUrl;
    }
    
    public void setTskUrl(String tskUrl)
    {
        this.tskUrl = tskUrl;
    }
    
    public String getTskPic()
    {
        return tskPic;
    }
    
    public void setTskPic(String tskPic)
    {
        this.tskPic = tskPic;
    }
    
    public String getTskType()
    {
        return tskType;
    }
    
    public void setTskType(String tskType)
    {
        this.tskType = tskType;
    }
    
    public String getTskObject()
    {
        return tskObject;
    }
    
    public void setTskObject(String tskObject)
    {
        this.tskObject = tskObject;
    }
    
    public Set getTaskTxts()
    {
        return taskTxts;
    }
    
    public void setTaskTxts(Set taskTxts)
    {
        this.taskTxts = taskTxts;
    }
    
}