<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch11.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="board" class="ch11.Board"></jsp:useBean>
<jsp:setProperty property="*" name="board"/>
<%	BoardDao bd = BoardDao.getInstance();
	String pageNum= request.getParameter("pageNum");
	int result  = bd.update(board); 
	if (result > 0) {	%>
<script type="text/javascript">
	alert("게시글이 수정 되었습니다");
	location.href="list.jsp?pageNum=<%=pageNum%>";
</script>
<%  } else if (result == 0) { %>
<script type="text/javascript">
	alert("게시글 수정이 실패되었습니다");
	history.go(-1);
</script>
<%  } else { %>
<script type="text/javascript">
	alert("암호가 다릅니다");
	history.go(-1);
</script>
<%  } %>
</body>
</html>