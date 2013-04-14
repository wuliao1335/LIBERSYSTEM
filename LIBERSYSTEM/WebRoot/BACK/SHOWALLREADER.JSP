<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.List,sunyang.domain.reader.Reader"%>

<html>
	<head>
		<title>查看读者信息</title>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<table width="1000" height="100" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td colspan="13" class="tb_showallbook">
					<div align="center">
						读者信息列表
					</div>
				</td>
			</tr>
			<tr>
				<td class="tb_sabookBorder">
					用户帐号
				</td>
				<td class="tb_sabookBorder">
					密码
				</td>
				<td class="tb_sabookBorder">
					读者类型
				</td>
				<td class="tb_sabookBorder">
					真实姓名
				</td>
				<td class="tb_sabookBorder">
					性别
				</td>
				<td class="tb_sabookBorder">
					借书证编号
				</td>
				<td class="tb_sabookBorder">
					证件类型
				</td>
				<td class="tb_sabookBorder">
					证件号码
				</td>
				<td class="tb_sabookBorder">
					电话
				</td>
				<td class="tb_sabookBorder">
					电子邮箱
				</td>
				<td class="tb_sabookBorder">
					注册时间
				</td>
				<td class="tb_sabookBorder">
					备注
				</td>
				<td class="tb_sabookBorder">
					操作
				</td>
				<%
					List<Reader> lr = (List) request.getAttribute("allReaderList");
					for (Reader r : lr) {
				%>
			
			<tr>


				<td class="tb_sabookMain"><%=r.getName()%></td>
				<td class="tb_sabookMain"><%=r.getPassword()%></td>
				<td class="tb_sabookMain"><%=r.getReaderTypeT().getName()%></td>
				<td class="tb_sabookMain"><%=r.getRealName()%></td>
				<td class="tb_sabookMain">
					<%
						if (r.getSex() == 1) {
								out.println("男");
							} else {
								out.println("女");
							}
					%>
				</td>
				<td class="tb_sabookMain"><%=r.getIdentiCode()%></td>
				<td class="tb_sabookMain"><%=r.getPapertype()%></td>
				<td class="tb_sabookMain"><%=r.getPaperNo()%></td>
				<td class="tb_sabookMain"><%=r.getTel()%></td>
				<td class="tb_sabookMain"><%=r.getEmail()%></td>
				<td class="tb_sabookMain"><%=r.getRegistTime().toString().substring(0, 10)%></td>
				<td class="tb_sabookMain"><%=r.getDescription()%></td>
				<td class="tb_sabookMain">
					<a href="readerInfo.do?method=showReader&id=<%=r.getId()%>">编辑</a>
					<a href="readerInfo.do?method=removeReader&id=<%=r.getId()%>">删除</a>
				</td>
			</tr>

			<%
				}
			%>
			<tr>
				<td colspan="13">
					<%
						int pageNum = (Integer) request.getAttribute("pageNum");
						for (int i = 0; i < pageNum; i++) {
					%>
					<a href="readerInfo.do?method=findReader&page=<%=i + 1%>">第<%=i + 1%>页</a>
					<%
						}
					%>
				</td>
			</tr>
		</table>


	</body>
</html>
