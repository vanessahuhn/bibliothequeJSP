<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Contact Us</title>
	</head>
	<body>

		<h2>CONTACT YOUR LIBRARY</h2>

		<marquee dir="ltr"><font style="color: navy;">........</font></marquee>

		<form action="contactSave.jsp">
                
			<table><tr> <td>Name:</td><td><input type="text" name="name"></td></tr>
				<tr> <td>Email:</td><td><input type="text" name="email"></td></tr>
				<tr> <td>Phone:</td><td><input type="text" name="phone"></td></tr>
				<tr> <td>Message:</td><td><textarea name="message"></textarea></td></tr>

				<tr><td><input type="submit" value="Submit"></td></tr>
			</table>
                
		</form>

     	<div id="newsletter">
                    
        	<p><a href=#>Click here for details</a></p>
        </div>
        <div id="events">
        	<h2>FEATURED EVENTS</h2>
            <ul>
                <li><a href=#>More Projects</a></li>
            	<li><a href=#>More Tutorials</a></li>
            </ul>
        </div>
        <div class="clear">
        </div>
                
		<a href=register.jsp>BACK TO HOME</a>
            
        <HR>
            
        <jsp:include page="footer.html"></jsp:include>
            
        <HR>

	</body>
</html>