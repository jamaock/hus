package com.hus.erp.action.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements ServletRequestAware
{
    private static final long serialVersionUID = 291411716070391483L;
    
    protected HttpServletRequest request;
    
    public void setServletRequest(HttpServletRequest request)
    {
        this.request = request;
    }
    
    protected void printByJson(Object object)
    {
        printByJson(object, "application/json");
    }
    
    protected void printByJson(Object obj, String type)
    {
        PrintWriter out = null;
        HttpServletResponse httpServletResponse = ServletActionContext.getResponse();
        httpServletResponse.setContentType(type);
        httpServletResponse.setCharacterEncoding("utf-8");
        String json = null;
        try
        {
            out = httpServletResponse.getWriter();
            json = JSON.toJSONStringWithDateFormat(obj, "yyyy-MM-dd HH:mm:ss");
//            serializer.config(SerializerFeature.QuoteFieldNames, false);

        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        out.print(json);
        out.close();
    }
}
