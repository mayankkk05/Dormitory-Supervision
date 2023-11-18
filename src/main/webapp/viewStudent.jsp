<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Data</title><script src="sweetalert.min.js"></script>
<script>
function confirmalert(){ 
	document.getElementById('frm')
	let a =  confirm("Are you sure you want delete the record?");
	if(a==false){event.preventDefault();}

}
	</script>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

       th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        td
        {
        background-color: white;
        }
        
        th {
        color:white;
            background-color: black;
        }
        h1{
        font-family:'Cambria';
        color:black;
        margin-top:70px;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp"/>
    <center><h1>List of Admitted Students</h1></center> 

    <%
        String jdbcUrl = "jdbc:mysql://localhost:3306/dorms";
        String jdbcUsername = "root";
        String jdbcPassword = "super";

        Connection conn = null;
        
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);

            String sql = "SELECT * FROM studentinfo";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            out.println("<html><body><table>");
            out.println("<tr><th>ID</th><th>Name</th><th>E-mail</th><th>ID Code</th><th>Department</th><th>Contact No.</th><th>Date of Birth</th><th>Age</th><th>Studying Year</th><th>Address</th><th>City</th><th>State</th><th>Parent's Name</th><th>Parent's Contact No.</th><th>Parent's Occupation</th><th>Delete Record</th></tr>");
				
            while (rs.next()) {
            	String icode = rs.getString("code");
                out.println("<tr>");
                out.println("<td>" +rs.getInt("id")+ "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("email") + "</td>");
                out.println("<td>" + rs.getString("code") + "</td>");
                out.println("<td>" + rs.getString("department") + "</td>");
                out.println("<td>" + rs.getLong("contact") + "</td>");
                out.println("<td>" + rs.getDate("birth_date") + "</td>");
                out.println("<td>" + rs.getInt("age") + "</td>");
                out.println("<td>" + rs.getString("year") + "</td>");
                out.println("<td>" + rs.getString("address") + "</td>");
                out.println("<td>" + rs.getString("city") + "</td>");
                out.println("<td>" + rs.getString("state") + "</td>");
                out.println("<td>" + rs.getString("parent_name") + "</td>");
                out.println("<td>" + rs.getString("parent_contact") + "</td>");
                out.println("<td>" + rs.getString("parent_occupation") + "</td>");
                out.println("<td> <form onSubmit=\"confirmalert()\" id=\"frm\" action=\"DeleteRecord?code="+icode+"\" method=\"get\"><input type=\"hidden\" name=\"code\" value="+icode+"><input type=\"submit\" value=\"Delete\"/></form></td>");
                out.println("</tr>");
            }

            out.println("</table>");        } catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
