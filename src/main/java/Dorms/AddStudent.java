package Dorms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public AddStudent() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String name = request.getParameter("name");
			String icode = request.getParameter("IDCode");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			long contact = Long.parseLong(request.getParameter("contact"));
			String dept=request.getParameter("dept");
			String email  = request.getParameter("email");
			String pname=request.getParameter("pname");
			long pcontact = Long.parseLong(request.getParameter("pcontact"));
			String poccupation=request.getParameter("poccupation");
			int age = Integer.parseInt(request.getParameter("age"));
			Date dob = Date.valueOf(request.getParameter("dob"));
			String year = request.getParameter("year");
			
			
			
		
			
				String sql = "insert into studentinfo(name,email,code,department,contact,birth_date,age,year,address,city,state,parent_name,parent_contact,parent_occupation) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql:///dorms","root","super");
				PreparedStatement ps = con.prepareStatement(sql);
				
				ps.setString(1, name);
				ps.setString(2,email);
				ps.setString(3,icode);
				ps.setString(4,dept);
				ps.setLong(5, contact);
				ps.setDate(6, dob);
				ps.setInt(7, age);
				ps.setString(8, year);
				ps.setString(9,address);
				ps.setString(10, city);
				ps.setString(11, state);
				ps.setString(12, pname);
				ps.setLong(13, pcontact);
				ps.setString(14, poccupation);
			
				
				
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
						+ "		swal('Success','Successfully Added Student..','success').then(function(){window.location='index.html';});\r\n"
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
							+ "		swal('Invalid','Failed to Add!! ..','error').then(function(){window.location='index.html';});\r\n"
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


