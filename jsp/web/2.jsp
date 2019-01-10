<%--
  Created by IntelliJ IDEA.
  User: zhanglidong
  Date: 2019-01-10
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <b>page指令</b>
    <pre>

        page指令通常位于JSP页面的顶端，一个JSP页面可以使用多条page指令，语法格式如下：

　　      &lt%@page

            [language="Java"]
            [extends="package.class"]
            [import="package.class|package.*,...*]
　　　　     [session="true | false "]
            [buffer="none | 8KB | size Kb"]
　　　　     [autoFlush="true | false"]
            [info="text"]
            [errorPage="relativeURL"]
　　　　     [contentType="mimeType[;charset=characterSet]"|"text/html;charSet=ISO-8859-1"]
　　　　     [pageEncoding="ISO-8859-1"]
            [isErrorPage="true | false"]
         %&gt

    　　page指令各属性的意义：

        　　language：声明JSP页面使用的脚本语言的种类，通常是Java，默认值也是Java，通常无需设置。
        　　extends：指定JSP页面编译所产生的Java类所继承的父类，或所实现的接口。
        　　import：用来导入包。下面几个包是默认自动导入的，不需要显示导入：java.lang.*、javax.servlet.*、javax.servlet.jsp.*、javax.servlet.http.*。
        　　session：设定这个JSP页面是否需要HTTP Session。
        　　buffer：指定输出缓冲区的大小。输出缓冲区的JSP内部对象为out，用于缓存JSP页面对客户端浏览器的输出，默认值为8KB，可以设置为none，也可以设置为其他的值，单位为Kb。
        　　autoFlush：当输出缓冲区即将溢出时，是否需要强制输出缓冲区的内容。true时为正常输出，false时则会在buffer溢出时产生一个异常。
        　　info：设置该JSP程序的信息，可以看作其说明，通过Servlet.getServletInfo()方法可以获取该值。如果在JSP页面中，可直接调用getServletInfo()方法获取该值。
        　　errorPage：指定错误处理页面。如果本页面产生了异常或者错误，而该JSP页面没有对应的处理代码，则会自动调用该属性所指定的JSP页面，因为JSP内建了异常机制支持。Internet Explorer需要取消设置"显示友好HTTP错误信息“，才支持该属性。
        　　isErrorPage：设置JSP页面是否为错误处理程序。如果true，则无需指定errorPage属性。
        　　contentType：用于设定生成网页的文件格式和编码字符集，即MIME类型和页面字符集类型，默认MIME类型是text/html；默认的字符集类型是ISO-8859-1。
        　　pageEncoding：指定生成网页的编码字符集。
    </pre>

    <b>include指令</b>
    <pre>
    　　这是个静态的include语句，它把目标页面的其他编译指令也包含进来。include既可以包含静态的文本，也可以包含动态的JSP页面。静态的include编译指令会将被包含的页面加入本页面，融合成一个页面,然后在编译，因此被包含页面甚至不需要是一个完整的页面。
        注意：简单理解，被包含页面的内容被引入包含页面，然后编译。所以注意编译指令不要重复，html代码不要重复。

    　　语法：
    　　  &lt%@include file=”relativeURLSpec"%&gt

    　　如果被嵌入的文件经常需要改变，应使用&ltjsp:include&gt操作指令，因为它是动态的include语句。
    </pre>
</body>
</html>
