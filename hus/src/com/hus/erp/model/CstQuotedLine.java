package com.hus.erp.model;

import java.util.Date;

public class CstQuotedLine implements java.io.Serializable
{
    
    // Fields
    
    private Integer cqlId;
    
    private CstQuotedSheet cstQuotedSheet;
    
    private String status;
    
    private Date created;
    
    private Date lastmod;
    
    private Integer itmId;
    
    private String itmMyid;
    
    private String itmName;
    
    private Integer specId;
    
    private String itmSpec;
    
    private Integer unitId;
    
    private String itmUnit;
    
    private Double itmPrice;
    
    private Double itmQty;
    
    private Double itmAmount;
    
    private String itmNote;
    
    private Double discountNo;
    
    private Double taxPrice;
    
    private Integer tax;
    
    // Constructors
    
    /** default constructor */
    public CstQuotedLine()
    {
    }
    
    /** minimal constructor */
    public CstQuotedLine(Integer cqlId, CstQuotedSheet cstQuotedSheet)
    {
        this.cqlId = cqlId;
        this.cstQuotedSheet = cstQuotedSheet;
    }
    
    /** full constructor */
    public CstQuotedLine(Integer itmId, String itmMyid, String itmName, String itmSpec, String itmUnit,
        Double itmPrice, Double itmQty, String itmNote, Double taxPrice, Integer tax)
    {
        this.itmId = itmId;
        this.itmMyid = itmMyid;
        this.itmName = itmName;
        this.itmSpec = itmSpec;
        this.itmUnit = itmUnit;
        this.itmPrice = itmPrice;
        this.itmQty = itmQty;
        this.itmNote = itmNote;
        this.taxPrice = taxPrice;
        this.tax = tax;
    }
    
    /** full constructor */
    public CstQuotedLine(Integer cqlId, CstQuotedSheet cstQuotedSheet, String status, Date created, Date lastmod,
        Integer itmId, String itmMyid, String itmName, Integer specId, String itmSpec, Integer unitId, String itmUnit,
        Double itmPrice, Double itmQty, Double itmAmount, String itmNote, Double discountNo, Double taxPrice,
        Integer tax)
    {
        this.cqlId = cqlId;
        this.cstQuotedSheet = cstQuotedSheet;
        this.status = status;
        this.created = created;
        this.lastmod = lastmod;
        this.itmId = itmId;
        this.itmMyid = itmMyid;
        this.itmName = itmName;
        this.specId = specId;
        this.itmSpec = itmSpec;
        this.unitId = unitId;
        this.itmUnit = itmUnit;
        this.itmPrice = itmPrice;
        this.itmQty = itmQty;
        this.itmAmount = itmAmount;
        this.itmNote = itmNote;
        this.discountNo = discountNo;
        this.taxPrice = taxPrice;
        this.tax = tax;
    }
    
    // Property accessors
    
    public Integer getCqlId()
    {
        return this.cqlId;
    }
    
    public void setCqlId(Integer cqlId)
    {
        this.cqlId = cqlId;
    }
    
    public CstQuotedSheet getCstQuotedSheet()
    {
        return this.cstQuotedSheet;
    }
    
    public void setCstQuotedSheet(CstQuotedSheet cstQuotedSheet)
    {
        this.cstQuotedSheet = cstQuotedSheet;
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
    
    public Integer getItmId()
    {
        return this.itmId;
    }
    
    public void setItmId(Integer itmId)
    {
        this.itmId = itmId;
    }
    
    public String getItmMyid()
    {
        return this.itmMyid;
    }
    
    public void setItmMyid(String itmMyid)
    {
        this.itmMyid = itmMyid;
    }
    
    public String getItmName()
    {
        return this.itmName;
    }
    
    public void setItmName(String itmName)
    {
        this.itmName = itmName;
    }
    
    public Integer getSpecId()
    {
        return this.specId;
    }
    
    public void setSpecId(Integer specId)
    {
        this.specId = specId;
    }
    
    public String getItmSpec()
    {
        return this.itmSpec;
    }
    
    public void setItmSpec(String itmSpec)
    {
        this.itmSpec = itmSpec;
    }
    
    public Integer getUnitId()
    {
        return this.unitId;
    }
    
    public void setUnitId(Integer unitId)
    {
        this.unitId = unitId;
    }
    
    public String getItmUnit()
    {
        return this.itmUnit;
    }
    
    public void setItmUnit(String itmUnit)
    {
        this.itmUnit = itmUnit;
    }
    
    public Double getItmPrice()
    {
        return this.itmPrice;
    }
    
    public void setItmPrice(Double itmPrice)
    {
        this.itmPrice = itmPrice;
    }
    
    public Double getItmQty()
    {
        return this.itmQty;
    }
    
    public void setItmQty(Double itmQty)
    {
        this.itmQty = itmQty;
    }
    
    public Double getItmAmount()
    {
        return this.itmAmount;
    }
    
    public void setItmAmount(Double itmAmount)
    {
        this.itmAmount = itmAmount;
    }
    
    public String getItmNote()
    {
        return this.itmNote;
    }
    
    public void setItmNote(String itmNote)
    {
        this.itmNote = itmNote;
    }
    
    public Double getDiscountNo()
    {
        return this.discountNo;
    }
    
    public void setDiscountNo(Double discountNo)
    {
        this.discountNo = discountNo;
    }
    
    public Double getTaxPrice()
    {
        return this.taxPrice;
    }
    
    public void setTaxPrice(Double taxPrice)
    {
        this.taxPrice = taxPrice;
    }
    
    public Integer getTax()
    {
        return this.tax;
    }
    
    public void setTax(Integer tax)
    {
        this.tax = tax;
    }
    
}