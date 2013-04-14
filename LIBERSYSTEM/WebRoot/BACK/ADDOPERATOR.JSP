<%@ page language="java" pageEncoding="UTF-8"%>
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
			if (form.name.value==""){
				alert("请输入管理员名称!");
				form.name.focus();
				return false;
			}
			if (form.password.value==""){
				alert("请输入管理员密码!");
				form.password.focus();
				return false;
			}	
			if (form.password.value!=form.password2.value){
				alert("两次输入的密码不一致!");
				form.password2.focus();
				return false;
			}
		}
		function checkName(){
			DWRMethods.checkOperatorName(document.getElementById("name").value,function(returnBoolean){
				if(document.getElementById("name").value==""){
					document.getElementById("nameChecker").innerHTML="管理员帐号不可以为空";
				  	document.getElementById("nameChecker").style.color="red";
				  	document.getElementById("name").focus();
					document.getElementById("submit").disabled=true;
				}else if(returnBoolean){
					document.getElementById("nameChecker").innerHTML="此管理员帐号可以使用";
				  	document.getElementById("nameChecker").style.color="black";
					document.getElementById("submit").disabled=false;
				}else{
					document.getElementById("nameChecker").innerHTML="此管理员帐号已经存在";
				  	document.getElementById("nameChecker").style.color="red";
				  	document.getElementById("name").focus();
				  	document.getElementById("submit").disabled=true;
				}
			});
		}
		</script>
		<title>增加新的管理员</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<form id="form" name="form1" method="post"
			action="sysOperator.do?method=addOperator">
			<table border="0" cellpadding="0" cellspacing="0" align="center">


				<tr>
					<td colspan="2" class="tb_addbookBgImage">
						增加新的管理员
					</td>
				</tr>
				<tr>
					<td width="80" class="tb_addbook">
						管理员帐号
					</td>
					<td width="468" class="tb_addbookRight">
						<div id="nameChecker"></div>
						<input type="text" name="name" value="" onblur="checkName()" />
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						管理员密码
					</td>
					<td class="tb_addbookRight">
						<input type="password" name="password" value="" />
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						二次密码
					</td>
					<td class="tb_addbookRight">
						<input type="password" name="password2" value="" />
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						权限选择
					</td>
					<td class="tb_addbookRight">
						<input type="checkbox" name="bookOper" value="1" />
						图书操作权限
						<input type="checkbox" name="borrowOper" value="1" />
						借还操作权限
						<input type="checkbox" name="queryOper" value="1" />
						查询操作权限
						<input type="checkbox" name="readerOper" value="1" />
						读者操作权限
						<input type="checkbox" name="sysOper" value="1" />
						系统操作权限
					</td>
				</tr>
				<tr>
					<td colspan="2" class="tb_addbookall">

						<div align="center">
							<input class="input_bg" type="submit" name="Submit" value="提交"
								disabled onclick="return check(form)" />

							<input class="input_bg" type="reset" name="Reset" value="重置" />
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
