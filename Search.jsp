
<%@page import="java.util.List"%>
<%@page import="model.user"%>
<%@page import="Dao.userDao"%>
<%@page import="java.util.Date"%>


<%! 
  List<user> mylist;
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>Show data</title>
    </head>
   
        <center>
     <% 
           
  userDao sd=new  userDao();
           mylist=sd.searchAll();
    %>   
     <table border="1" >  
    
          <tr bgcolor="green">
             <th>Name</th><th>Aadhar NO.</th><th>Mobile NO.</th><th>Fever(in last 7 days)</th><th>Cough and cold</th><th>Date of last foreign trip</th></tr>     

          <h2><font color="blue">Data Entry of All User </font><h2>
       <% 
                for(user S:mylist)
                {
               %>
               <tr>
              
    
                   <td><%=S.getName()%></td>  
                  
 
                  <td><%=S.getAadhar()%></td>  
                   <td><%=S.getMobile()%></td>  
                   <td><%=S.getInfo1()%></td>
                    <td><%=S.getInfo2()%></td>
                    <td><%=S.getDate()%></td>
               </tr>  
     
          <%
                } 
              %>              
              
   </table>              
    </center>
    </body>
</html>


