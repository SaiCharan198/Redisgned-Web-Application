    <%@page import="java.sql.*"%>

<%
   String Email=request.getParameter("a");
   String Username=request.getParameter("b");
   String password=request.getParameter("ps");
   String ConfirmPassword=request.getParameter("cps");

   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://node43422-saicharanr.cloud.cms500.com/charan","root","QBGcnb30112");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into onlinecab(e,n,p,cp)values('"+Email+"','"+Username+"','"+password+"','"+ConfirmPassword+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("Login to continue");
           window.location.href="index.html";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="index.html";
           </script>
           <%

   }
%>