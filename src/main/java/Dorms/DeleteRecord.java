package Dorms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteRecord
 */
@WebServlet("/DeleteRecord")
public class DeleteRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			PrintWriter out = response.getWriter();
			String icode = request.getParameter("code");
			String sql = "delete from studentinfo where code = ?";
			String jdbcUrl = "jdbc:mysql://localhost:3306/dorms";
	        String jdbcUsername = "root";
	        String jdbcPassword = "super";
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, icode);
            HttpSession ses = request.getSession(false);
    		String uname = (String)ses.getAttribute("username");
            if(uname.equals("mayankk05"))
            {
            int n = ps.executeUpdate();
            if(n==1)
            {
            	out.println("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "<meta charset=\"UTF-8\">\r\n"
						+ "<title>Signup success</title>\r\n"
						+ "<script src=\"sweetalert.min.js\"></script>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "	<script>\r\n"
						+ "		swal('Success','Record Deleted..','success').then (function(){window.location='viewStudent.jsp';});"
						+ "	</script>\r\n"
						+ "</body>\r\n"
						+ "</html>");
            	
            }
            else
            {
            	out.println("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "<meta charset=\"UTF-8\">\r\n"
						+ "<title>Signup success</title>\r\n"
						+ "<script src=\"sweetalert.min.js\"></script>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "	<script>\r\n"
						+ "		swal('Failed','Failed to delete..','error').then (function(){window.location='viewStudent.jsp';});"
						+ "	</script>\r\n"
						+ "</body>\r\n"
						+ "</html>");
           
            }
		}
            else {out.println("<!DOCTYPE html>\r\n"
					+ "<html>\r\n"
					+ "<head>\r\n"
					+ "<meta charset=\"UTF-8\">\r\n"
					
					+ "<script src=\"sweetalert.min.js\"></script>\r\n"
					+ "</head>\r\n"
					+ "<body>\r\n"
					+ "	<script>\r\n"
					+ "		swal('Acces Denied','Sorry.. You are not an admin','error').then (function(){window.location='loginhome.jsp';});"
					+ "	</script>\r\n"
					+ "</body>\r\n"
					+ "</html>");}
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

}
