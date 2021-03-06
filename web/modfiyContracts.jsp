<%@ page import="cn.com.bean.Contracts" %>
<%@ page import="cn.com.ui.Common" %><%--
  Created by IntelliJ IDEA.
  User: rzh
  Date: 2020/1/16
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
<head>
    <title>添加联系人</title>
    <link rel="stylesheet" href="./css/MainCss.css" />
    <link rel="stylesheet" href="./css/addContracts.css" />
    <script type="text/javascript" src="./js/Login.js" ></script>
    <script type="text/javascript" src="./js/Main.js"></script>
    <script type="text/javascript" src="./js/addContracts.js" ></script>
</head>
<body>
<%
    Contracts contracts= (Contracts) request.getAttribute("contracts");
    String pageNum=request.getParameter("page");
%>

<div class="all">
    <%@include file="top.jsp"%>
    <div  class="main">
        <div class="left">
            <%@include file="menu.jsp"%>
        </div>
        <div class="right">
            <h2>修改联系人</h2>
            <form  method="post" action="savemodfiy.do" onsubmit="return MyCheck()">
                <table border="0" cellpadding="0" cellspacing="0" width="80%" style="margin-left: 80px;">
                    <tr>
                        <td width="25%" height="30" align="right" >姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
                        <td width="25%" height="30" align="left">
                            <input id="page" name="page" type="hidden" value="<%= pageNum%>">
                            <input id="cid" name="cid" type="hidden" value="<%= contracts.getCid()%>">
                            <input id="name" name="name" type="text" maxlength="40" class="input" value="<%= contracts.getName()%>">
                        </td>
                        <td width="25%" height="30" align="right">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                        <td width="25%" height="30" align="left">
                            <div style="float: left;">
                                <% if ("男".equals(contracts.getSex())){ %>
                                <div class="radio">
                                    <input id="sex" name="sex" type="radio" value="男" class="radio_type" checked/><label class="radio-label">男&nbsp;&nbsp;</label>
                                </div>
                                <div class="radio">
                                    <input id="sex" name="sex" type="radio" value="女" class="radio_type" /><label class="radio-label">女</label>
                                </div>
                                <%} else {%>
                                <div class="radio">
                                    <input id="sex" name="sex" type="radio" value="男" class="radio_type" /><label class="radio-label">男&nbsp;&nbsp;</label>
                                </div>
                                <div class="radio">
                                    <input id="sex" name="sex" type="radio" value="女" class="radio_type" checked/><label class="radio-label">女</label>
                                </div>
                                <%}%>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="30" align="right">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
                        <td width="25%" height="30" align="left">
                            <input id="age" name="age" type="text" maxlength="20" class="input" value="<%=getNotNullString(contracts.getAge())%>">
                        </td>
                        <td width="25%" height="30" align="right">出生日期：</td>
                        <td width="25%" height="30" align="left">
                            <input id="birth" name="birth" type="text" class="input" value="<%= getNotNullString(contracts.getBirth()) %>" >
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="30" align="right">QQ：</td>
                        <td width="25%" height="30" align="left">
                            <input id="qq" name="qq" type="text"  value="<%=getNotNullString(contracts.getQq())%>" maxlength="10" class="input" OnKeyPress="if((event.keyCode>=48)&&(event.keyCode <=57)) {event.returnValue=true;} else{event.returnValue=false;}" style="ime-mode:Disabled">
                        </td>
                        <td width="25%" height="30" align="right">固定电话：</td>
                        <td width="25%" height="30" align="left">
                            <input id="number" name="number" type="text" value="<%=getNotNullString(contracts.getNumber())%>" maxlength="13" class="input" OnKeyPress="if((event.keyCode>=48)&&(event.keyCode <=57) || event.keyCode==45) {event.returnValue=true;} else{event.returnValue=false;}" style="ime-mode:Disabled">
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="30" align="right">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</td>
                        <td width="25%" height="30" align="left">
                            <input id="phone" name="phone" type="text"  value="<%=contracts.getPhone()%>" maxlength="11" class="input" OnKeyPress="if((event.keyCode>=48)&&(event.keyCode <=57)) {event.returnValue=true;} else{event.returnValue=false;}" style="ime-mode:Disabled">
                        </td>
                        <td width="25%" height="30" align="right">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</td>
                        <td width="25%" height="30" align="left">
                            <input id="email" name="email" type="text"  value="<%=getNotNullString(contracts.getEmail())%>" maxlength="20" class="input">
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="30" align="right">工作单位：</td>
                        <td width="25%" height="30" align="left">
                            <input id="workspace" name="workspace" type="text"  value="<%=getNotNullString(contracts.getWorkspace())%>" maxlength="40" class="input">
                        </td>
                        <td width="25%" height="30" align="right">通信地址：</td>
                        <td width="25%" height="30" align="left">
                            <input id="address" name="address" type="text"  value="<%=getNotNullString(contracts.getAddress())%>" maxlength="50" class="input">
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="30" align="right">邮政编码：</td>
                        <td width="25%" height="30" align="left">
                            <input id="postcode" name="postcode" type="text" class="input"  value="<%=getNotNullString(contracts.getPostcode())%>" maxlength="6" OnKeyPress="if((event.keyCode>=48)&&(event.keyCode <=57)) {event.returnValue=true;} else{event.returnValue=false;}" style="ime-mode:Disabled">
                        </td>
                        <td width="25%" height="30" align="right">角&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</td>
                        <td width="25%" height="30" align="left">
                            <div style="float: left;">
                                <% if("个人".equals(contracts.getRole())){%>
                                    <div class="radio">
                                        <input id="role" name="role" type="radio" value="个人" class="radio_type" checked/><label class="radio-label">个人&nbsp;</label>
                                    </div>
                                    <div class="radio">
                                        <input id="role" name="role" type="radio" value="企业" class="radio_type" /><label class="radio-label">企业</label>
                                    </div>
                                <% }else {%>
                                    <div class="radio">
                                        <input id="role" name="role" type="radio" value="个人" class="radio_type" /><label class="radio-label">个人&nbsp;</label>
                                    </div>
                                    <div class="radio">
                                        <input id="role" name="role" type="radio" value="企业" class="radio_type" checked/><label class="radio-label">企业</label>
                                    </div>
                                <%} %>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" height="10" colspan="4"></td>
                    </tr>
                    <tr>
                        <td width="100%" height="30" colspan="4" align="center">
                            <input type="submit" value="修  改" class="button" >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" value="重  置" class="button">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <%@include file="bottom.jsp"%>
</div>

<%!
        String getNotNullString(Object str){
             if(str==null){
                 return "";
             }else{
               return String.valueOf(str);
             }
        }
%>
</body>
</html>
