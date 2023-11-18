package Dorms;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		out.println("<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "<meta charset=\"UTF-8\">\r\n"
				+ "<title>Failed</title>\r\n"
				+ "<script src=\"sweetalert.min.js\"></script>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "	<script>\r\n"
				+ "		 swal({\r\n"
				+ "    	  title: \"Confirm?\",\r\n"
				+ "    	  text: \"Are you sure to sign out?\",\r\n"
				+ "    	  icon: \"warning\",\r\n"
				+ "    	  buttons: true,\r\n"
				+ "    	  dangerMode: true,\r\n"
				+ "    	})\r\n"
				+ "    	.then((willDelete) => {\r\n"
				+ "    	  if (willDelete) {\r\n"
				+ "    	    swal(\"Signed out\", {\r\n"
				+ "    	      icon: \"success\",\r\n"
				+ "    	    });"
				+ " 	window.location='index.html';\r\n"
				+ "    	  } else {\r\n"
				+ "    	    swal(\"Signout Cancelled\");window.location='loginhome.jsp';\r\n"
				+ "    	  }\r\n"
				+ "    	});"
				+ "	</script>\r\n"
				+ "</body>\r\n"
				+"</html>");
		
		HttpSession ses = request.getSession(false);
		String uname = (String)ses.getAttribute("username");
		System.out.println(uname);
		ses.invalidate();
	}



}
