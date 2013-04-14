<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="sunyang.domain.operator.Operator"%>

<html>
	<head>
		<title>修改管理员权限</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<form id="form" name="form1" method="post"
			action="sysOperator.do?method=updateAuthority">
			<table border="0" cellpadding="0" cellspacing="0" align="center">
				<%
					Operator o = (Operator) request.getAttribute("operator");
				%>
				<input type="hidden" name="id" value="<%=o.getId()%>" />
				<tr>

					<td colspan="2" class="tb_addbookBgImage">
						修改管理员权限
					</td>
				<tr>
					<td class="tb_addbook">
						管理员帐号
					</td>
					<td class="tb_addbookRight">
						<%=o.getName()%></td>
				</tr>
				<tr>
					<td class="tb_addbook">
						权限选择
					</td>
					<td class="tb_addbookRight">
						<input type="checkbox" name="bookOper" value="1"
							<%if(o.getBook()==1)out.println("checked"); %> />
						图书操作权限
						<input type="checkbox" name="borrowOper" value="1"
							<%if(o.getBorrow()==1)out.println("checked"); %> />
						借还操作权限
						<input type="checkbox" name="queryOper" value="1"
							<%if(o.getQuery()==1)out.println("checked"); %> />
						查询操作权限
						<input type="checkbox" name="readerOper" value="1"
							<%if(o.getReader()==1)out.println("checked"); %> />
						读者操作权限
						<input type="checkbox" name="sysOper" value="1"
							<%if(o.getSystem()==1)out.println("checked"); %> />
						系统操作权限
					</td>
				</tr>
				<tr>
					<td colspan="2" class="tb_addbookall">

						<div align="center">
							<input class="input_bg" type="submit" name="Submit" value="提交" />
							&nbsp;&nbsp;

							<input class="input_bg" type="reset" name="Reset" value="重置" />
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
