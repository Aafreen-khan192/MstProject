
<%@page import="Dao.userDao" %>
<jsp:useBean class="model.user" id="S">
  
  <jsp:setProperty property="*" name="S"></jsp:setProperty>  
</jsp:useBean>

<html>
   
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
      <title>JSP Page</title>
    </head>
    <body>
    <% 
     userDao sd=new  userDao();
       
  if(sd.insertinformation(S)>0)
             response.sendRedirect("insertdata.jsp");
    %>
    </body>
</html>

