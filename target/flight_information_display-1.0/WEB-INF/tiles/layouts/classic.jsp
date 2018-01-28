<%-- 
    Document   : classic
    Created on : 25.01.2018, 20:50:19
    Author     : mrk
--%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
    <head>
        <title><tiles:getAsString name="title" /></title>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <link rel="stylesheet" type="text/css"
                href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

        <!-- 
            <spring:url value="/css/main.css" var="springCss" />
            <link href="${springCss}" rel="stylesheet" />
        -->
        <c:url value="/css/main.css" var="jstlCss" />
        <link href="${jstlCss}" rel="stylesheet" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
    </head>

    <body>
        <div>
            <tiles:insertAttribute name="menu" />
        </div>
        <div>
            <tiles:insertAttribute name="header" />
        </div>
        <div>
            <tiles:insertAttribute name="body" />
        </div>
        <div>
            <tiles:insertAttribute name="footer" />
        </div>
    </body>
</html>