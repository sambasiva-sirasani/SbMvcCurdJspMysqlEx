<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 style="text-align: center;">Welcome to Student Registration page</h2>
<pre>
<form:form action="save" method="post" modelAttribute="student">
Name:<form:input path="stdName"/>
Password:<form:password path="stdPwd"/>
Gender:
		<form:radiobutton path="stdGen" value="male"/>male
		<form:radiobutton path="stdGen" value="female"/>female
Course:
		<form:select path="stdCourse">
		<form:option value="Angular">Angular</form:option>
		<form:option value="Spring">Spring</form:option>
		<form:option value="Python">Python</form:option>
		<form:option value="Devops">Devops</form:option>
		</form:select>	
Address:
		<form:textarea path="stdAddr" rows="2" cols="4"/>
Languages:
		<form:checkbox path="stdLang" value="Tel"/>	Tel
		<form:checkbox path="stdLang" value="Eng"/>	Eng
		<form:checkbox path="stdLang" value="Hin"/>	Hin
		<input type="submit" value="CreateStudent">	
		

</form:form>
</pre>
${info}
</body>
</html>