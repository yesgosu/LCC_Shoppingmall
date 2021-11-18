<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  String dir = request.getServletPath();
  out.print(dir.substring(1, dir.indexOf(".")));
  //out.print(dir.substring(1, index)
/*   String fileDir = "fileDir"; //파일을 보여줄 디렉토리
  String filePath = request.getRealPath(fileDir) + "/"; //파일이 존재하는 실제경로


  File f = new File(filePath);
  File [] files = f.listFiles(); //파일의 리스트를 대입

  for ( int i = 0; i < files.length; i++ ) {
    if ( files[i].isFile()){
    out.println(files[i].getName());
    }
  } */
  %>
</body>
</html>