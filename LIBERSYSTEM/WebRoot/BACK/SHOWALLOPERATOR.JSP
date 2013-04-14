<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,sunyang.domain.operator.Operator"%>

<html>
	<head>

		<title>所有的管理员信息</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<center>
			<h2>
				&nbsp;
			</h2>
		</center>
		<form id="form1" name="form1" method="post" action="">
			<table border="0" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td colspan="8" class="tb_showallbook">
						<div align="center">
							管理员信息
						</div>
					</td>
				</tr>
				<tr>
					<td class="tb_sabookBorder">
						<div align="center">
							管理员名称
						</div>
					</td>
					<td class="tb_sabookBorder">
						<div align="center">
							密码
						</div>
					</td>
					<td class="tb_sabookBorder">
						<div align="center">
							图书操作权限
						</div>
					</td>
					<td class="tb_sabookBorder">
						<div align="center">
							借还操作权限
						</div>
					</td>
					<td class="tb_sabookBorder">
						<div align="center">
							查询权限
						</div>
					</td>
					<td class="tb_sabookBorder">
						<div align="center">
							读者操作权限
						</div>
					</td>
					<td class="tb_sabookBorder">
						<div align="center">
							系统操作权限
						</div>
					</td>
					<td class="tb_sabookBorder">
						<div align="center">
							操作
						</div>
					</td>
				</tr>
				<%
					List<Operator> lof = (List) request.getAttribute("lof");
					for (Operator o : lof) {
				%>
				<tr>
					<td class="tb_sabookMain">
						<div align="center"><%=o.getName()%></div>
					</td>
					<td class="tb_sabookMain">
						<div align="center"><%=o.getPassword()%></div>
					</td>
					<td class="tb_sabookMain">
						<div align="center">
							<%
								if (o.getBook() == 1) {
										out.println("是");
									} else {
										out.println("否");
									}
							%>
						</div>
					</td>
					<td class="tb_sabookMain">
						<div align="center">
							<%
								if (o.getBorrow() == 1) {
										out.println("是");
									} else {
										out.println("否");
									}
							%>
						</div>
					</td>
					<td class="tb_sabookMain">
						<div align="center">
							<%
								if (o.getQuery() == 1) {
										out.println("是");
									} else {
										out.println("否");
									}
							%>
						</div>
					</td>
					<td class="tb_sabookMain">
						<div align="center">
							<%
								if (o.getReader() == 1) {
										out.println("是");
									} else {
										out.println("否");
									}
							%>
						</div>
					</td>
					<td class="tb_sabookMain">
						<div align="center">
							<%
								if (o.getSystem() == 1) {
										out.println("是");
									} else {
										out.println("否");
									}
							%>
						</div>
					</td>
					<td class="tb_sabookMain">
						<a href="sysOperator.do?method=showAuthority&id=<%=o.getId()%>">修改</a>
						<a href="sysOperator.do?method=removeOperator&id=<%=o.getId()%>">删除</a>
					</td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
	</body>
</html>
