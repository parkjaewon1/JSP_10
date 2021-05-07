<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch11.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String password = request.getParameter("password");
	String pageNum= request.getParameter("pageNum");
	BoardDao bd = BoardDao.getInstance();
	int result  = bd.delete(num, password);
	if (result > 0) {  %>
<script type="text/javascript">
	alert("삭제 되었습니다");
	location.href = "list.jsp?pageNum=<%=pageNum%>";
</script>
<%  } else if (result == 0) { %>
<script type="text/javascript">
	alert("삭제 실패 !!!");
	history.back();
</script>
<%  } else { %>
<script type="text/javascript">
	alert("암호를 다시 입력하세요");
	history.back();
</script>
<%  }  %>
</body>
</html>