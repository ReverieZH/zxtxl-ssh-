<%--
  Created by IntelliJ IDEA.
  User: rzh
  Date: 2020/1/31
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myfn" uri="/WEB-INF/myfn.tld" %>

<html>
<head>
    <title>Title</title>
    <script>
        function x(num) {
                return "11"
        }
    </script>
</head>
<body>
<c:forEach begin="0" end="5">
    1111
</c:forEach>

<c:set var="number" value="11" scope="request"></c:set>
${myfn:displayNumber()}
</body>
</html>
