<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="sunyang.domain.operator.Operator"%>
<html>
	<head>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/dwr/interface/DWRMethods.js"></script>
		<script language="javascript">
		function check(form){
			if(form.name.value==""){
				alert("读者名称不能为空！");
				form.name.focus();return false;
			}
			if(form.realName.value==""){
				alert("读者真实姓名不能为空！");
				form.name.focus();return false;
			}
			if(form.tel.value==""){
				alert("读者电话不能为空！");
				form.tel.focus();return false;
			}
			if(form.paperNo.value==""){	
				alert("证件号码不能为空!");
				form.name.focus();
				return false;
			}
			
			var temp = document.getElementById("email");
			//对电子邮件的验证
			var emailStr = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			if(!emailStr.test(temp.value)){
				alert('提示\n\n请输入有效的E_mail!');
				temp.focus();
				return false;
			}
			
			var temp = document.getElementById("tel");
			//对电话号码的验证
			var telStr = /^[0-9]*$/;
			if(!telStr.test(temp.value)){
				alert('提示\n\n请输入有效的电话号码�');
				temp.focus();
				return false;
			}
		}
		
		function getReaderType(){
			DWRMethods.getReaderTypes(function(types){
				dwr.util.removeAllOptions("type");
				dwr.util.addOptions("type",types);});
		}
		
		function checkName(){
			DWRMethods.checkReaderName(document.getElementById("name").value,function(returnBoolean){
				if(document.getElementById("name").value==""){
					document.getElementById("nameChecker").innerHTML="读者帐号不可以为空";
				  	document.getElementById("nameChecker").style.color="red";
				  	document.getElementById("name").focus();
					document.getElementById("submit").disabled=true;
				}else if(returnBoolean){
					document.getElementById("nameChecker").innerHTML="此读者帐号可以使用";
				  	document.getElementById("nameChecker").style.color="black";
					document.getElementById("submit").disabled=false;
				}else{
					document.getElementById("nameChecker").innerHTML="此读者帐号已经存在";
				  	document.getElementById("nameChecker").style.color="red";
				  	document.getElementById("name").focus();
				  	document.getElementById("name").value="";
					document.getElementById("submit").disabled=true;
				}
			});
		}
		</script>
		<title>增加读者</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body onload="getReaderType();">

		<form id="form" name="form" method="post"
			action="readerInfo.do?method=addReader">
			<table width="345" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<tr>
					<td colspan="2" height="25" class="tb_addbookBgImage">
						增加读者
					</td>
				</tr>
				<tr>
					<td width="106" class="tb_addbook">
						读者帐号
					</td>
					<td width="223" class="tb_addbookRight">
						<label>
							<div id="nameChecker"></div>
							<input type="text" name="name" onblur="checkName()" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						真实姓名
					</td>
					<td class="tb_addbookRight">
						<label>
							<input type="text" name="realName" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						性别
					</td>
					<td class="tb_addbookRight">
						<label>
							<input type="radio" name="sex" value="1" checked="checked" />
							男
							<input type="radio" name="sex" value="0" />
							女
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						证件类型
					</td>
					<td class="tb_addbookRight">
						<label>
							<select name="papertype">
								<option value="身份证">
									身份证
								</option>
								<option value="学生证">
									学生证
								</option>
								<option value="军人证">
									军人证
								</option>
							</select>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						证件号码
					</td>
					<td class="tb_addbookRight">
						<label>
							<input type="text" name="paperNo" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						电话
					</td>
					<td class="tb_addbookRight">
						<label>
							<input type="text" name="tel" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						电子邮箱
					</td>
					<td class="tb_addbookRight">
						<label>
							<input type="text" name="email" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						读者类型
					</td>
					<td class="tb_addbookRight">
						<label>
							<select name="type"></select>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						备注
					</td>
					<td class="tb_addbookRight">
						<label>
							<textarea name="description"></textarea>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						操作人
					</td>
					<%
						Operator o = (Operator) session.getAttribute("operator");
					%>
					<td class="tb_addbookRight">
						<label>
							<select name="operator">
								<option value="<%=o.getId()%>"><%=o.getName()%></option>
							</select>
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="tb_addbookall">
						<label>

							<div align="center">
								<input class="input_bg" type="submit" name="submit" value="提交"
									disabled onclick="return check(form)" />

								<input class="input_bg" type="reset" name="reset" value="重写" />
							</div>
						</label>
					</td>
				</tr>
			</table>
		</form>

	</body>

</html>
