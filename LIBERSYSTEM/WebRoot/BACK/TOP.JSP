<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<link href="../css/StyleSheet.css" type="text/css" rel="stylesheet">
<html>
	<head>
		<title>管理系统</title>
	    <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
        </style>
</head>
	<script>
    function aa() {
        if (confirm("确认退出?")) {
            return true;
        } else {
            return false;
        }
    }

	</script>
	<body leftmargin="0" topmargin="0" bgcolor="#F2F7FB">
	<table width="100%" height="85" border="0" cellpadding="0" cellspacing="0" background="../image/top.gif">
          <tr>
            <td align="right" valign="bottom"><table width="346" border="0">
              <tr>
                <td width="336" height="40">
				<a href="<%=request.getContextPath()%>/back/updateOperatorPSW.jsp" target="mainFrame" class="a1"> &#8226;&nbsp;&nbsp;修改密码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="<%=request.getContextPath()%>/back/operatorUtil.do?method=loginout" onclick="return aa()" target="_parent" class="a1"> &#8226;&nbsp;&nbsp;退出系统</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				</td>
              </tr>
            </table>           			</td>
          </tr>
        </table>
	</body>
</html>
