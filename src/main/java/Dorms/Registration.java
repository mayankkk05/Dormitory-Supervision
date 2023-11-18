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


@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Registration() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String name =request.getParameter("name");
			long contact = Long.parseLong(request.getParameter("contact"));
			String email  = request.getParameter("email");
			String uname = request.getParameter("username");
			String psw = request.getParameter("password");

			
		
			
				String sql = "insert into login(name,contact,email,username,password) values (?,?,?,?,?)";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql:///dorms","root","super");
				PreparedStatement ps = con.prepareStatement(sql);
				
				ps.setString(1, name);
				ps.setLong(2,contact );
				ps.setString(3,email);
				ps.setString(4, uname);
				ps.setString(5, psw);
				
				PrintWriter pw= response.getWriter();
				
				int n = ps.executeUpdate();
				ps.close();
				con.close();
				
				if(n ==1)
				{System.out.println("INSERTED");
				pw.println("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "<meta charset=\"UTF-8\">\r\n"
						+ "<title>Signup success</title>\r\n"
						+ "<script src=\"sweetalert.min.js\"></script>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "	<script>\r\n"
						+ "		swal('Success','Successfully Register..','success').then(function(){window.location='index.html';});\r\n"
						+ "	</script>\r\n"
						+ "</body>\r\n"
						+ "</html>");
				}
				else
				{
					System.out.println("NOT INSERTED");
					pw.println("<!DOCTYPE html>\r\n"
							+ "<html>\r\n"
							+ "<head>\r\n"
							+ "<meta charset=\"UTF-8\">\r\n"
							+ "<title>Failed</title>\r\n"
							+ "<script src=\"sweetalert.min.js\"></script>\r\n"
							+ "</head>\r\n"
							+ "<body>\r\n"
							+ "	<script>\r\n"
							+ "		swal('Invalid','Failed to Register!! ..','error').then(function(){window.location='signup.jsp';});\r\n"
							+ "	</script>\r\n"
							+ "</body>\r\n"
							+"</html>");
				}
			
			}
			
			catch(Exception ex)
			{
				ex.printStackTrace();
			}

	    }
	}


