<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
</head>
<body>
<!-- ${pageContext.request.contextPath}/upload/execute_upload.do -->
        <!-- ${pageContext.request.contextPath}/upload1/upload1.do -->
        <!-- ${pageContext.request.contextPath}/upload2/upload2.do -->
        <!--  -->
        <form action="${pageContext.request.contextPath}/upload2/upload2.do" enctype="multipart/form-data" method="post">
            文件1:<input type="file" name="image"><br/>
            文件2:<input type="file" name="image"><br/>
            文件3:<input type="file" name="image"><br/>
                <input type="submit" value="上传" />
        </form>
</body>
</html>