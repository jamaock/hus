<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="new date 2013年7月13日">
<base href="<%=basePath%>"> 
<title>HUS-ERP欢迎您</title>
<link href="css.css" rel="stylesheet" type="text/css">

    </head>
    <body>

        <div class="openerp openerp_webclient_container" style="">
                            <div class="oe_form">
                                    <ul class="oe_form_field_status oe_form_status">

                                        <li class="oe_active" data-id="draft">
                                            <span class="label">报价单草稿</span>
                                            <span class="arrow"><span></span>
                                            </span>
                                        </li>

                                        <li class="" data-id="sent">
                                            <span class="label">报价单发送</span>
                                            <span class="arrow"><span></span>
                                            </span>
                                        </li>

                                        <li class="" data-id="progress">
                                            <span class="label">销售订单</span>
                                            <span class="arrow"><span></span>
                                            </span>
                                        </li>

                                        <li class="" data-id="done">
                                            <span class="label">已完成</span>
                                            <span class="arrow"><span></span>
                                            </span>
                                        </li>

                                    </ul>


                                </div>
                            </div>
                        </div>
                    </div>
    </body>
</html>