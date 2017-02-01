<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Todolist DAWIN alt</title>
	</head>
	
	<body>
	
		<c:set var="wago" value="<%=new java.util.Date(System.currentTimeMillis() - (7 * 1000 * 60 * 60 * 24)) %>" />
		
	 	<c:forEach items="${tasks}" var="task">
	 	
			<div>
				${task.name} - ${task.status.name}
				<c:if test="${task.status.name != 'FINISHED' && task.beginDate le wago}">
					<a href="<c:url value='/end-task/${task.id}' />">Terminer la tâche</a>
				</c:if>
			</div>
		 
		</c:forEach>
	
	</body>
</html>
