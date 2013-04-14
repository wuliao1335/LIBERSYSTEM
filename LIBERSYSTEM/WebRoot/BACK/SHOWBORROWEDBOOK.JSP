<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.List,sunyang.domain.borrow.Borrow"%>
<html>
	<head>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
		<title>借阅历史记录</title>
	</head>
	<body>
		<table width=800 border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td colspan="11" class="tb_addbookBgImage">
					借阅历史记录
				</td>
			</tr>
			<tr>
				<td class="tb_sabookBorder">
					图书编号
				</td>
				<td class="tb_sabookBorder">
					图书名称
				</td>
				<td class="tb_sabookBorder">
					读者帐号
				</td>
				<td class="tb_sabookBorder">
					读者真实姓名
				</td>
				<td class="tb_sabookBorder">
					借书证号
				</td>
				<td class="tb_sabookBorder">
					借书日期
				</td>
				<td class="tb_sabookBorder">
					到期时间
				</td>
				<td class="tb_sabookBorder">
					借书 操作人
				</td>
				<td class="tb_sabookBorder">
					归还情况
				</td>
				<td class="tb_sabookBorder">
					还书日期
				</td>
				<td class="tb_sabookBorder">
					还书操作人
				</td>
			</tr>
			<%
				List<Borrow> lbr = (List) request.getAttribute("borrwed");
				for (Borrow br : lbr) {
			%>
			<tr>
				<td class="tb_sabookMain"><%=br.getBarcodeT().getBarcode()%></td>
				<td class="tb_sabookMain"><%=br.getBarcodeT().getBookT().getBookName()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getName()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getRealName()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getIdentiCode()%></td>
				<td class="tb_sabookMain"><%=br.getBorrowTime().toString().substring(0, 10)%></td>
				<td class="tb_sabookMain"><%=br.getForceBackTime().toString().substring(0, 10)%></td>
				<td class="tb_sabookMain"><%=br.getOperatorTByBorrowOperator().getName()%></td>
				<td class="tb_sabookMain">
					<%
						if (br.getGiveback() == 0) {
								out.println("未归还");
							} else {
								out.println("已归还");
					%>
				</td>
				<td class="tb_sabookMain"><%=br.getGivebackTime().toString().substring(0, 10)%></td>
				<td class="tb_sabookMain"><%=br.getOperatorTByGivebackOperator().getName()%></td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>
			<tr>
				<td colspan="11">
					<%
						int pageNum = (Integer) request.getAttribute("pageNum");
						for (int i = 0; i < pageNum; i++) {
					%>
					<a href="borrow.do?method=historyBorrowed&page=<%=i + 1%>">第<%=i + 1%>页</a>
					<%
						}
					%>
				</td>
			</tr>

		</table>

	</body>
</html>
