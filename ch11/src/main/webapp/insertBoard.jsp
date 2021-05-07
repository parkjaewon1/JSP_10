<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch11.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	String ip = request.getRemoteAddr();
	BoardDao bd = BoardDao.getInstance();
	for (int i = 0; i < 228; i++) {
		Board board= new Board();
		board.setSubject("날씨좋다 "+i);
		board.setWriter("길동"+i);
		board.setEmail("k"+i+"@k.com");
		board.setPassword("1");
		board.setContent("봄날이 왔네"+i);
		board.setIp(ip);
		bd.insert(board);
	}
%>
입력 완료
</body>
</html>