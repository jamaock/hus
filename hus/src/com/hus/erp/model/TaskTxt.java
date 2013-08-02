package com.hus.erp.model;

import java.util.Date;

public class TaskTxt implements java.io.Serializable
{
    
    // Fields
    
    /**
     * @author wq @Description: TODO()
     * @date 2011-1-18 下午12:18:21 @Title:
     * @return
     */
    private static final long serialVersionUID = -3398793101473429918L;
    
    private Integer tsktxtId;
    
    // 映射任务实体
    private Task task;
    
    private String status;
    
    private Date created;
    
    private Date lastmod;
    
    private String tskName;
    
    private String tskOname;
    
    private String tskNote;
    
    private String langCode;
    
    private String tskTitle;
    
    // Constructors
    
    /** default constructor */
    public TaskTxt()
    {
    }
    
    /** minimal constructor */
    public TaskTxt(Task task, String tskName, String langCode)
    {
        this.task = task;
        this.tskName = tskName;
        this.langCode = langCode;
    }
    
    /** full constructor */
    public TaskTxt(Task task, String status, Date created, Date lastmod, String tskName, String tskOname,
        String tskNote, String langCode)
    {
        this.task = task;
        this.status = status;
        this.created = created;
        this.lastmod = lastmod;
        this.tskName = tskName;
        this.tskOname = tskOname;
        this.tskNote = tskNote;
        this.langCode = langCode;
    }
    
    // Property accessors
    
    public Integer getTsktxtId()
    {
        return this.tsktxtId;
    }
    
    public void setTsktxtId(Integer tsktxtId)
    {
        this.tsktxtId = tsktxtId;
    }
    
    public Task getTask()
    {
        return this.task;
    }
    
    public void setTask(Task task)
    {
        this.task = task;
    }
    
    public String getStatus()
    {
        return this.status;
    }
    
    public void setStatus(String status)
    {
        this.status = status;
    }
    
    public Date getCreated()
    {
        return this.created;
    }
    
    public void setCreated(Date created)
    {
        this.created = created;
    }
    
    public Date getLastmod()
    {
        return this.lastmod;
    }
    
    public void setLastmod(Date lastmod)
    {
        this.lastmod = lastmod;
    }
    
    public String getTskName()
    {
        return this.tskName;
    }
    
    public void setTskName(String tskName)
    {
        this.tskName = tskName;
    }
    
    public String getTskOname()
    {
        return this.tskOname;
    }
    
    public void setTskOname(String tskOname)
    {
        this.tskOname = tskOname;
    }
    
    public String getTskNote()
    {
        return this.tskNote;
    }
    
    public void setTskNote(String tskNote)
    {
        this.tskNote = tskNote;
    }
    
    public String getLangCode()
    {
        return this.langCode;
    }
    
    public void setLangCode(String langCode)
    {
        this.langCode = langCode;
    }
    
    public String getTskTitle()
    {
        return tskTitle;
    }
    
    public void setTskTitle(String tskTitle)
    {
        this.tskTitle = tskTitle;
    }
    
}