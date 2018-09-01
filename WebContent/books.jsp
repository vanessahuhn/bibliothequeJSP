<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="biblio.Book"%>

<%@ page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Books</title>
	</head>
	<body>

		<% try {
	
		//load the driver
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/bibliotheque_db";
		String user = "root";
		String pwd= "Password29";
		
		//establish the connection to the database
		Connection con = DriverManager.getConnection(url, user, pwd);
		
		//create statement
		Statement st=con.createStatement();
		//execute query
		ResultSet result = st.executeQuery("SELECT * FROM livre");
		
		//retrieve the results and add them in the ArrayList
		ArrayList<Book> listBook = new ArrayList<Book>();

		while (result.next()) {
			Book book = new Book();
				
				book.setNom(result.getString("nom"));
				book.setAuthor(result.getString("author"));
				book.setISBN(result.getString("ISBN"));
				
				listBook.add(book);
		}
		
		
		out.print("<ol>");
		for(int i = 0; i <listBook.size(); i++) {
			out.print("<li>"+listBook.get(i).getNom());
			out.print(" " +listBook.get(i).getAuthor());
			out.print(" " +listBook.get(i).getISBN());
			out.print("</li>");
		}
		out.print("</ol>");
		
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

%>

	</body>
</html>