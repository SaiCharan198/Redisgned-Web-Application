<%@page import="java.sql.*"%>
<%
Connection con;
Statement smt;
ResultSet rs;
int i=0;
  String Email_id = request.getParameter("email");
  String Password = request.getParameter("pass");
  try
  {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cab2", "root", "root");
    smt = con.createStatement();
    rs = smt.executeQuery("SELECT * FROM registration");
    while(rs.next())
    {
      if (Email_id.equals(rs.getString(1)) && Password.equals(rs.getString(3)))
        {
            session.setAttribute("Email_id", Email_id);
         i=1;
%>
  <script lang="javascript">
     window.location.href = "map1.jsp";
  </script>
<%          
  }}
      if(i==0)
      {
  
   %>
    <script lang="javascript">
         alert("Sorry try again with valid information");
     window.location.href = "index-5.html";
  </script>
  <% 
     }
    }
  
   catch(Exception e){
        out.println(e);
    }
%>
