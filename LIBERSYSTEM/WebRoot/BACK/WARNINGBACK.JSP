<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,sunyang.domain.borrow.Borrow"%>

<html>
	<head>
		<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
		<title>快要到期图书</title>
	</head>

	<body>
		<table width="1000" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td colspan="11" class="tb_addbookBgImage">
					<div align="center">
						快要到期图书列表
					</div>
				</td>
			</tr>
			<tr>
				<td class="tb_sabookBorder">
					图书编码
				</td>
				<td class="tb_sabookBorder">
					书名
				</td>
				<td class="tb_sabookBorder">
					读者名称
				</td>
				<td class="tb_sabookBorder">
					读者证件类型
				</td>
				<td class="tb_sabookBorder">
					读者证件号
				</td>
				<td class="tb_sabookBorder">
					读者真实姓名
				</td>
				<td class="tb_sabookBorder">
					读者Email
				</td>
				<td class="tb_sabookBorder">
					读者电话
				</td>
				<td class="tb_sabookBorder">
					读者类型
				</td>
				<td class="tb_sabookBorder">
					借书时间
				</td>
				<td class="tb_sabookBorder">
					到期时间
				</td>
			</tr>
			<%
				List<Borrow> list = (List) request.getAttribute("lb");
				for (Borrow br : list) {
			%>
			<tr>
				<td class="tb_sabookMain"><%=br.getBarcodeT().getBarcode()%></td>
				<td class="tb_sabookMain"><%=br.getBarcodeT().getBookT().getBookName()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getName()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getPapertype()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getPaperNo()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getRealName()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getEmail()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getTel()%></td>
				<td class="tb_sabookMain"><%=br.getReaderT().getReaderTypeT().getName()%></td>
				<td class="tb_sabookMain"><%=br.getBorrowTime().toString().substring(0, 10)%></td>
				<td class="tb_sabookMain"><%=br.getForceBackTime().toString().substring(0, 10)%></td>
			</tr>
			<%
				}
			%>
		</table>

	</body>
</html>
