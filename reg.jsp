    <%@page import="java.sql.*"%>

<%
   String email=request.getParameter("c");
   String name=request.getParameter("d");
   String password=request.getParameter("psw");
   String cpassword=request.getParameter("cpsw");

   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cab2","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into registration(email,uname,pass,Cpass)values('"+email+"','"+name+"','"+password+"','"+cpassword+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("Login to continue");
           window.location.href="index-5.html";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="index-5.html";
           </script>
           <%

   }
%>