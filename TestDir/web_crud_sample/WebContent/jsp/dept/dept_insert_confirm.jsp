<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link href="<%=request.getContextPath()%>/css/stylesheet.css"
  rel="stylesheet" type="text/css" />
<title>部署情報登録画面</title>
</head>
<body>

  <div id="contents">
    <div id="header">
      <%@include file="/jsp/common/header.jsp"%>
    </div>

    <h3>この内容で登録しますか？</h3>
    <table align="center" width="300px">
      <tr>
        <th>部署名</th>
        <td><c:out value="${deptForm.deptName}" /></td>
      </tr>
    </table>
    <form method="post"
      action="<%=request.getContextPath()%>/InsertDeptCompleteServlet">
       <input
        type="hidden" name="deptName" value="${deptForm.deptName}" /> <input
        type="submit" value="実行" />
    </form>
    <form method="post"
      action="<%=request.getContextPath()%>/InsertDeptInputServlet">
       <input
        type="hidden" name="deptName" value="${deptForm.deptName}" /> <input
        type="submit" value="戻る" />
    </form>

    <div id="footer">
      <%@include file="/jsp/common/footer.jsp"%>
    </div>
  </div>
</body>
</html>