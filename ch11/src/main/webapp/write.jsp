<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch11.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="board" class="ch11.Board"></jsp:useBean>
<jsp:setProperty property="*" name="board"/>
<%
	String ip = request.getRemoteAddr(); // 글쓰는 사람이 사용하는 컴퓨터의 ip번호
	board.setIp(ip);
	BoardDao bd = BoardDao.getInstance();
	int result = bd.insert(board);
	if (result > 0) {
%>
<script type="text/javascript">
	alert("입력 성공");
	location.href = "list.jsp";
</script>
<%  } else { %>
<script type="text/javascript">
	alert("으이그 똑바로 해 !!");
	history.go(-1);
</script>
<%  } %>
</body>
</html>