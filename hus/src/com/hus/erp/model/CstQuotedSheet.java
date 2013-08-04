package com.hus.erp.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * CstQuotedSheet entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class CstQuotedSheet implements java.io.Serializable
{
    
    // Fields
    
    private Integer cstQuotedId;
    
    private String status;
    
    private Date created;
    
    private Date lastmod;
    
    private String cstQuotedMyid;
    
    private Integer cstId;
    
    private String cstMyid;
    
    private String cstName;
    
    private String ordAudit;
    
    private Integer ordAuditId;
    
    private String ordAuditDesc;
    
    private Integer ordMaker;
    
    private Integer askId;
    
    private Integer curId;
    
    private Integer effeciveDays;
    
    // private Date quotedDate;
    
    private String paymentType;
    
    private String quotedDesc;
    
    private Double quotedAmount;
    
    private String quotedObject;
    
    private Integer quotedObjid;
    
    private String quotedStatus;
    
    private Integer ordConfId;
    
    private String istax;
    
    private Double quotedAmountTax;
    
    private Set cstQuotedLines = new HashSet(0);

    public Integer getCstQuotedId()
    {
        return cstQuotedId;
    }

    public void setCstQuotedId(Integer cstQuotedId)
    {
        this.cstQuotedId = cstQuotedId;
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

    public String getCstQuotedMyid()
    {
        return cstQuotedMyid;
    }

    public void setCstQuotedMyid(String cstQuotedMyid)
    {
        this.cstQuotedMyid = cstQuotedMyid;
    }

    public Integer getCstId()
    {
        return cstId;
    }

    public void setCstId(Integer cstId)
    {
        this.cstId = cstId;
    }

    public String getCstMyid()
    {
        return cstMyid;
    }

    public void setCstMyid(String cstMyid)
    {
        this.cstMyid = cstMyid;
    }

    public String getCstName()
    {
        return cstName;
    }

    public void setCstName(String cstName)
    {
        this.cstName = cstName;
    }

    public String getOrdAudit()
    {
        return ordAudit;
    }

    public void setOrdAudit(String ordAudit)
    {
        this.ordAudit = ordAudit;
    }

    public Integer getOrdAuditId()
    {
        return ordAuditId;
    }

    public void setOrdAuditId(Integer ordAuditId)
    {
        this.ordAuditId = ordAuditId;
    }

    public String getOrdAuditDesc()
    {
        return ordAuditDesc;
    }

    public void setOrdAuditDesc(String ordAuditDesc)
    {
        this.ordAuditDesc = ordAuditDesc;
    }

    public Integer getOrdMaker()
    {
        return ordMaker;
    }

    public void setOrdMaker(Integer ordMaker)
    {
        this.ordMaker = ordMaker;
    }

    public Integer getAskId()
    {
        return askId;
    }

    public void setAskId(Integer askId)
    {
        this.askId = askId;
    }

    public Integer getCurId()
    {
        return curId;
    }

    public void setCurId(Integer curId)
    {
        this.curId = curId;
    }

    public Integer getEffeciveDays()
    {
        return effeciveDays;
    }

    public void setEffeciveDays(Integer effeciveDays)
    {
        this.effeciveDays = effeciveDays;
    }

    public String getPaymentType()
    {
        return paymentType;
    }

    public void setPaymentType(String paymentType)
    {
        this.paymentType = paymentType;
    }

    public String getQuotedDesc()
    {
        return quotedDesc;
    }

    public void setQuotedDesc(String quotedDesc)
    {
        this.quotedDesc = quotedDesc;
    }

    public Double getQuotedAmount()
    {
        return quotedAmount;
    }

    public void setQuotedAmount(Double quotedAmount)
    {
        this.quotedAmount = quotedAmount;
    }

    public String getQuotedObject()
    {
        return quotedObject;
    }

    public void setQuotedObject(String quotedObject)
    {
        this.quotedObject = quotedObject;
    }

    public Integer getQuotedObjid()
    {
        return quotedObjid;
    }

    public void setQuotedObjid(Integer quotedObjid)
    {
        this.quotedObjid = quotedObjid;
    }

    public String getQuotedStatus()
    {
        return quotedStatus;
    }

    public void setQuotedStatus(String quotedStatus)
    {
        this.quotedStatus = quotedStatus;
    }

    public Integer getOrdConfId()
    {
        return ordConfId;
    }

    public void setOrdConfId(Integer ordConfId)
    {
        this.ordConfId = ordConfId;
    }

    public String getIstax()
    {
        return istax;
    }

    public void setIstax(String istax)
    {
        this.istax = istax;
    }

    public Double getQuotedAmountTax()
    {
        return quotedAmountTax;
    }

    public void setQuotedAmountTax(Double quotedAmountTax)
    {
        this.quotedAmountTax = quotedAmountTax;
    }

    public Set getCstQuotedLines()
    {
        return cstQuotedLines;
    }

    public void setCstQuotedLines(Set cstQuotedLines)
    {
        this.cstQuotedLines = cstQuotedLines;
    }
    
}