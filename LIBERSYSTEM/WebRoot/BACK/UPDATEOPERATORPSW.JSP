﻿<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="sunyang.domain.operator.Operator"%>
<html>
	<head>

		<script language="javascript">
		function check(form){
			if (form.password.value==""){
				alert("请输入管理员密码!");form.password.focus();return false;
			}	
			if (form.password.value!=form.password2.value){
				alert("两次输入的密码不一致!");form.password.focus();return false;
			}	
		}
		</script>
		<title>更改密码</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<hr />
		<form id="form" name="form1" method="post"
			action="operatorUtil.do?method=editPassword">
			<%
				Operator o = (Operator) session.getAttribute("operator");
			%><input type="hidden" name="id" value="<%=o.getId()%>" />
			<table width="355" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<tr>
					<td colspan="2" class="tb_addbookBgImage">
						更改密码
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						管理员名称
					</td>
					<td class="tb_addbookRight">
						<%=o.getName()%>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						管理员密码
					</td>
					<td class="tb_addbookRight">
						<input type="password" name="password"
							value="<%=o.getPassword()%>" />
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						二次密码
					</td>
					<td class="tb_addbookRight">
						<input type="password" name="password2"
							value="<%=o.getPassword()%>" />
					</td>
				</tr>
				<tr>
					<td colspan="2" class="tb_addbookall">

						<div align="center">
							<input class="input_bg" type="submit" name="Submit" value="提交"
								onclick="check(form)" />
							&nbsp;&nbsp;

							<input class="input_bg" type="reset" name="reset" value="重置" />
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
