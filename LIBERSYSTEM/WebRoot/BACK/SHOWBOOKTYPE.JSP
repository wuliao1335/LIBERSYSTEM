<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.List,sunyang.domain.bookType.*"%>
<html>
	<head>
		<title>显示所有的图书类型</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<center>
			<h2></h2>
		</center>
		<table width="558" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td colspan="3" class="tb_showallbook">
					<div align="center">
						图书类型
					</div>
				</td>
			</tr>
			<tr>
				<td class="tb_sabookBorder">
					编号
				</td>
				<td class="tb_sabookBorder">
					类型名称
				</td>
				<td class="tb_sabookBorder">
					操作
				</td>
			</tr>
			<%
				List<BookType> list = (List) request.getAttribute("bookTypeList");
				int i = 0;
				for (BookType bt : list) {
					++i;
			%>
			<tr>
				<td height="28" class="tb_sabookMain"><%=i%></td>
				<td class="tb_sabookMain"><%=bt.getName()%></td>
				<td class="tb_sabookMain">
					<a href="booktype.do?method=showBookType&id=<%=bt.getId()%>">编辑</a>
					<a href="booktype.do?method=removeBookType&id=<%=bt.getId()%>">删除</a>
				</td>
			</tr>

			<%
				}
			%>
		</table>
	</body>
</html>
