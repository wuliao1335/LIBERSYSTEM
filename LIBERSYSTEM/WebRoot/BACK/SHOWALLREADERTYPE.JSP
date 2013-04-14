<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.List,sunyang.domain.readerType.ReaderType"%>

<html>
	<head>
		<title>显示所有的读者类�</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<center>
			<h2></h2>
		</center>
		<form id="form1" name="form1" method="post" action="">
			<table width="500" height="110" border="0" cellpadding="0"
				cellspacing="0" align="center">
				<tr>
					<td colspan="3" class="tb_showallbook">
						<div align="center">
							显示所有的读者类型
						</div>
					</td>
				</tr>
				<tr>
					<td class="tb_sabookBorder" width="71">
						类型名称
					</td>
					<td class="tb_sabookBorder">
						可借图书数量
					</td>
					<td class="tb_sabookBorder" width="61">
						操作
					</td>
				</tr>
				<%
					List<ReaderType> lr = (List) request.getAttribute("allReaderType");
					for (ReaderType rt : lr) {
				%>
				<tr>
					<td class="tb_sabookMain"><%=rt.getName()%></td>
					<td class="tb_sabookMain"><%=rt.getQuantity()%></td>
					<td class="tb_sabookMain">
						<a href="readerType.do?method=showReaderType&id=<%=rt.getId()%>">编辑
						</a>
						<a href="readerType.do?method=removeReaderType&id=<%=rt.getId()%>">删除
						</a>
					</td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
	</body>
</html>
