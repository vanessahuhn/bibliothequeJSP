<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
 <%
 try {
 			String n = request.getParameter("username");
	        String p = request.getParameter("password");
	        String e = request.getParameter("email");
	        String c = request.getParameter("language");
	        
	        
	        Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/bibliotheque_db";
			String user = "root";
			String pwd= "Password29";
			
			Connection con=DriverManager.getConnection(url, user, pwd);
			PreparedStatement ps = con.prepareStatement("insert into info values(?,?,?,?)");
				
			ps.setString(1, n);
		    ps.setString(2, p);
		    ps.setString(3, e);
		    ps.setString(4, c);
		            
		    int i = ps.executeUpdate();
		            
		            
		    if(i>0){
		    %>
		        <jsp:forward page="register.jsp"></jsp:forward>
		    <% 
		    }
		    else{
				out.print("Sorry! Please fill correct details and try again." );
		    }
				
 }
 catch(Exception e){e.printStackTrace();
	out.print("Sorry! Please fill correct details and try again." );
 }

 %>