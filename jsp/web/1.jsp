<%--
  Created by IntelliJ IDEA.
  User: zhanglidong
  Date: 2019-01-10
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <pre>
    说明：&lt%!  %&gt : 定义代码,
         &lt%  %&gt : 运行代码
        jsp 会编译为一个serverlet，、
            定义代码会做为serverlet的定义部分，可以放成员变量和方法。
            运行代码会做为serverlt的service()的代码运行
        selvet：

            Servlet生命周期分为三个阶段：
            　　1，初始化阶段  调用init()方法
            　　2，响应客户请求阶段　　调用service()方法
            　　3，终止阶段　　调用destroy()方法

            Servlet初始化阶段：
            　　在下列时刻Servlet容器装载Servlet：
            　　　　1，Servlet容器启动时自动装载某些Servlet，实现它只需要在web.XML文件中的<Servlet></Servlet>之间添加如下代码：
                        <loadon-startup>1</loadon-startup>
            　　　　2，在Servlet容器启动后，客户首次向Servlet发送请求
            　　　　3，Servlet类文件被更新后，重新装载Servlet
            也就是说：severlet启动后一直会在内存（一个实例），所有的请求都走这个实例。
            所有的请求均由 service() 进行处理。
    </pre>
    运行结果：<br>
    <%!
    int count = 0;
    %>
    count:<%=++count%>
</body>
</html>
