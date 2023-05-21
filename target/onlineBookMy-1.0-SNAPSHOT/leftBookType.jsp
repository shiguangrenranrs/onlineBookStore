<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="fq" items="${requestScope.bookTypes}">
    <div class="l2">
        <i class="glyphicon glyphicon-chevron-right"></i>
        <a href="${pageContext.request.contextPath}/ShowBookListByTypeId?typeId=${fq.key.bookTypeId}&nowPage=1">${fq.key.bookTypeName}</a>：
    </div>
    <c:forEach var="son" items="${requestScope.bookTypes[fq.key]}">
        <div class="l3">
            &nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/ShowBookListByTypeId?typeId=${son.bookTypeId}&nowPage=1">${son.bookTypeName}</a>
        </div>
    </c:forEach>
</c:forEach>
	
	