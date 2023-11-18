package Dorms;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Services")
public class Services extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String service= request.getParameter("service");
		HttpSession ses = request.getSession(false);
		String uname = (String)ses.getAttribute("username");
		//System.out.println(uname);
		
		if(service!=null)
		{
			switch(service)
			{
			case "Admit new student":
				if(uname==null || ses==null) {out.println("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "<meta charset=\"UTF-8\">\r\n"
						+ "<title>Signup success</title>\r\n"
						+ "<script src=\"sweetalert.min.js\"></script>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "	<script>\r\n"
						+ "		swal('Error','Please Login first','info').then (function(){window.location=document.referrer;});"
						+ "	</script>\r\n"
						+ "</body>\r\n"
						+ "</html>");}
				if(uname.equals("mayankk05"))
				{
				response.sendRedirect("addstudent.jsp");
				}
				else
				{
					out.println("<!DOCTYPE html>\r\n"
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
							+ "</html>");
	            	
				}
				
				break;
			case "Admitted students":
				if(uname==null || ses==null)
				{out.println("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "<meta charset=\"UTF-8\">\r\n"
						
						+ "<script src=\"sweetalert.min.js\"></script>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "	<script>\r\n"
						+ "		swal('Error','Please Login first','info').then (function(){window.location=document.referrer;});"
						+ "	</script>\r\n"
						+ "</body>\r\n"
						+ "</html>");}
				else
				{
				response.sendRedirect("viewStudent.jsp");
				}
				break;
			}
		
			
		}
		}
		catch(NullPointerException ex) 
		{
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<!DOCTYPE html>\r\n"
					+ "<html>\r\n"
					+ "<head>\r\n"
					+ "<meta charset=\"UTF-8\">\r\n"
					+ "<title>Signup success</title>\r\n"
					+ "<script src=\"sweetalert.min.js\"></script>\r\n"
					+ "</head>\r\n"
					+ "<body>\r\n"
					+ "	<script>\r\n"
					+ "		swal('Error','Please Login first','info').then (function(){window.location=document.referrer;});"
					+ "	</script>\r\n"
					+ "</body>\r\n"
					+ "</html>");
		}
	}

	

}
