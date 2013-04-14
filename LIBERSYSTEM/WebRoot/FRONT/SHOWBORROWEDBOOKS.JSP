<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="sunyang.domain.borrow.Borrow"%>
<html>
	<head>
		<title>读者已借图书</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<table border=0 cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td>
					<a href="reader.do?method=showReaderInformation">修改个人信息</a>
				</td>
			</tr>

			<tr>
				<td colspan="6" class="tb_udRInfo">
					以下是您所借的图书和到期时间
				</td>
			</tr>
			<tr>
				<td class="borrow_tbmain">
					书名
				</td>
				<td class="borrow_tbmain">
					书号
				</td>
				<td class="borrow_tbmain">
					借书时间
				</td>
				<td class="borrow_tbmain">
					到期时间
				</td>
				<td class="borrow_tbmain">
					到期剩余天数
				</td>
				<td class="borrow_tbmain">
					续借
				</td>
			</tr>
			<%
				List list = (List) request.getAttribute("borrowedBooksList");
				for (Object l : list) {
					List end = (List) l;
					Borrow borrow = (Borrow) end.get(0);
			%>
			<tr>
				<td class="borrow-tbmainO"><%=borrow.getBarcodeT().getBookT().getBookName()%></td>
				<td class="borrow-tbmainO"><%=borrow.getBarcodeT().getBarcode()%></td>
				<td class="borrow-tbmainO"><%=borrow.getBorrowTime().toString().substring(0, 10)%></td>
				<td class="borrow-tbmainO"><%=borrow.getForceBackTime().toString().substring(0, 10)%></td>
				<td class="borrow-tbmainO"><%=end.get(1)%></td>

				<td style="border: 1px solid #9DC3DC; color: #000000">
					&nbsp;
					<%
						if (borrow.getRenew() == 0) {
					%><a href="reader.do?method=renew&borrowId=<%=borrow.getId()%>">续借</a>
					<%
						}
					%>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>
