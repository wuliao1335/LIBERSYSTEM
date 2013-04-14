<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="sunyang.domain.reader.*"%>
<html>
	<head>

		<script type="text/javascript"
			src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/dwr/interface/DWRMethods.js"></script>
		<script language="javascript">
		function getReaderType(){
			DWRMethods.getReaderTypes(function(types){
				dwr.util.removeAllOptions("type");
				dwr.util.addOptions("type",types);});
		}
				
		function check(form){
		
			if(form.realName.value==""){
				alert("读者真实姓名不能为空！");
				form.realName.focus();return false;
			}
			if(form.papertype.value==""){
				alert("证件类型不能为空！");
				form.papertype.focus();return false;
			}
			if(form.paperNo.value==""){	
				alert("证件号码不能为空！");
				form.paperNo.focus();	
					return false;
			}
		}
		</script>
		<title>修改读者信息</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body onload="getReaderType()">
		<form id="form" name="form" method="post"
			action="readerInfo.do?method=updateReader">
			<%
				Reader r = (Reader) request.getAttribute("reader");
			%><input type="hidden" name="id" value="<%=r.getId()%>" />
			<table width="345" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<tr>
					<td colspan="2" class="tb_addbookBgImage">
						修改读者信息
					</td>
				</tr>
				<tr>
					<td width="223" class="tb_addbook">
						读者帐号
					</td>
					<td width="223" class="tb_addbookRight">
						<label>
							<%=r.getName()%>
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						真实姓名
					</td>
					<td class="tb_addbookRight">
						<label>
							<input type="text" name="realName" value="<%=r.getRealName()%>" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						性别
					</td>
					<td class="tb_addbookRight">
						<label>
							<input type="radio" name="sex" value="1"
								<%if(r.getSex()==1)out.println("checked");%> />
							男
							<input type="radio" name="sex" value="0"
								<%if(r.getSex()==0)out.println("checked");%> />
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
								<option value="身份证"
									<%if(r.getPapertype().equals("身份证"))out.println("selected"); %>>
									身份证
								</option>
								<option value="学生证"
									<%if(r.getPapertype().equals("学生证"))out.println("selected"); %>>
									学生证
								</option>
								<option value="军人证"
									<%if(r.getPapertype().equals("军人证"))out.println("selected"); %>>
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
							<input type="text" name="paperNo" value="<%=r.getPaperNo()%>" />
						</label>
					</td>
				</tr>
				<tr>
					<td class="tb_addbook">
						读者类型
					</td>
					<td class="tb_addbookRight">
						<select name="type">
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="tb_addbookall">
						<label>

							<div align="center">
								<input class="input_bg" type="submit" name="Submit" value="提交"
									onclick="return check(form)" />
								&nbsp;&nbsp;
								<input class="input_bg" type="reset" name="reset" value="重写" />
							</div>
						</label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
