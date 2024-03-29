<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="sunyang.domain.reader.Reader"%>
<html>
	<head>
		<title>修改读者信息</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
		<script language="javascript">
		function check(form){
			if (form.password.value==""){
				alert("请输入密码!");form.password.focus();return false;
			}	
			if (form.password.value!=form.password2.value){
				alert("两次输入的密码不一致!");form.password2.focus();return false;
			}	
			var temp = document.getElementById("email");
			//对电子邮件的验证
			var emailStr = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			if(!emailStr.test(temp.value)){
				alert('提示\n\n请输入有效的E_mail！');
				temp.focus();
				return false;
			}
			
			var temp = document.getElementById("tel");
			//对电话号码的验证
			var telStr = /^[0-9]*$/;
			if(!telStr.test(temp.value)){
				alert('提示\n\n请输入有效的电话号码！');
				temp.focus();
				return false;
			}
		}
		</script>
	</head>
	<body>
		<form id="form" name="form" method="post"
			action="reader.do?method=updateReaderInfo">
			<table width="545" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<%
					List l = (List) request.getAttribute("showReaderInfoList");
					Reader r = (Reader) l.get(0);
					String type = (String) l.get(1);
				%>
				<tr>
					<td colspan="2" class="tb_udRInfo">
						修改读者信息
					</td>
				</tr>
				<tr>
					<td width="106" class="tb_udRnfoBorder">
						图书证号
					</td>
					<td width="223" class="tb_udRnfoBorderRight">
						<label>
							<%=r.getIdentiCode()%>
						</label>
						<input type="hidden" name="id" value="<%=r.getId()%>" />
					</td>
				</tr>
				<tr>
					<td width="106" class="tb_udRnfoBorder">
						登录帐号
					</td>
					<td width="223" class="tb_udRnfoBorderRight">
						<label>
							<%=r.getName()%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						读者密码
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<input type="password" name="password"
								value="<%=r.getPassword()%>" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						二次密码
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<input type="password" name="password2"
								value="<%=r.getPassword()%>" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						真实姓名
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<%=r.getRealName()%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						性别
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<%
								if (r.getSex() == 1) {
									out.println("男");
								} else {
									out.println("女");
								}
							%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						读者类型
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<%=type%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						证件类型
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<%=r.getPapertype()%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						证件号
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<%=r.getPaperNo()%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						电话
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<input type="text" name="tel" value="<%=r.getTel()%>" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						电子邮箱
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<input type="text" name="email" value="<%=r.getEmail()%>" />
						</label>
					</td>
				</tr>

				<tr>
					<td class="tb_udRnfoBorder">
						注册时间
					</td>
					<td class="tb_udRnfoBorderRight">
						<label>
							<%=r.getRegistTime().toString().substring(0, 10)%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_udRnfoBorder">
						备注
					</td>
					<td class="tb_udRnfoBorderRight">
						<textarea rows="" cols="" name="description"><%=r.getDescription()%></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="udRnfobg">
						<div align="center">
							<input class="input_udRnfobg" type="submit" name="Submit"
								value="提交" onclick="return check(form)" />
							<input class="input_udRnfobg" " type="reset" name="reset"
								value="重写" />
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
