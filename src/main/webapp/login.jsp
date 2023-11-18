<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In Page</title>
     <script src="sweetalert.min.js">
    
     </script>
    <style>
    @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap");

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
}

body {
    background: #000;
    background-image : url("about2.jpeg");
    background-repeat: no-repeat;
    background-size:cover;
}

body::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    opacity: 0.5;
    width: 100%;
    height: 100%;
    background: url("images/hero-img.jpg");
    background-position: center;
}



nav a img {
    width: 167px;
}

.form-wrapper {
    position: absolute;
    left: 50%;
    top: 50%;
    border-radius: 4px;
    padding: 70px;
    width: 450px;
    transform: translate(-50%, -50%);
    background: rgba(0, 0, 0, .75);
}

.form-wrapper h2 {
    color: #fff;
    font-size: 2rem;
}

.form-wrapper form {
    margin: 25px 0 65px;
}

form .form-control {
    height: 50px;
    position: relative;
    margin-bottom: 16px;
}

.form-control input {
    height: 100%;
    width: 100%;
    background: #333;
    border: none;
    outline: none;
    border-radius: 4px;
    color: #fff;
    font-size: 1rem;
    padding: 0 20px;
}

.form-control input:is(:focus, :valid) {
    background: #444;
    padding: 16px 20px 0;
}

.form-control label {
    position: absolute;
    left: 20px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 1rem;
    pointer-events: none;
    color: #8c8c8c;
    transition: all 0.1s ease;
}

.form-control input:is(:focus, :valid)~label {
    font-size: 0.75rem;
    transform: translateY(-130%);
}

form button {
    width: 100%;
    padding: 16px 0;
    font-size: 1rem;
    background: #e50914;
    color: #fff;
    font-weight: 500;
    border-radius: 4px;
    border: none;
    outline: none;
    margin: 25px 0 10px;
    cursor: pointer;
    transition: 0.1s ease;
}

form button:hover {
    background: #c40812;
}

.form-wrapper a {
    text-decoration: none;
}

.form-wrapper a:hover {
    text-decoration: underline;
}

.form-wrapper :where(label, p, small, a) {
    color: #b3b3b3;
}

form .form-help {
    display: flex;
    justify-content: space-between;
}

form .remember-me {
    display: flex;
}

form .remember-me input {
    margin-right: 5px;
    accent-color: #b3b3b3;
}

form .form-help :where(label, a) {
    font-size: 0.9rem;
}

.form-wrapper p a {
    color: #fff;
}

.form-wrapper small {
    display: block;
    margin-top: 15px;
    color: #b3b3b3;
}

.form-wrapper small a {
    color: #0071eb;
}

@media (max-width: 740px) {
    body::before {
        display: none;
    }

    nav, .form-wrapper {
        padding: 20px;
    }

    nav a img {
        width: 140px;
    }

    .form-wrapper {
        width: 100%;
        top: 43%;
    }

    .form-wrapper form {
        margin: 25px 0 40px;
    }
}
    </style>

</head>
<body>
    <jsp:include page="navbar.jsp" />

    <nav>

    </nav>

    <div class="form-wrapper">
        <h2>Sign In</h2>
        <form action="login.jsp" method="POST">
            <div class="form-control">
                <input type="text" name="username" required>
                <label>Username</label>
            </div>
            <div class="form-control">
                <input type="password" name="password" required>
                <label>Password</label>
            </div>
            <button type="submit">Log In</button>
        </form>
        <p>New User? <a href="signup.jsp">Register now</a></p>
    </div>

    <%
if ("POST".equals(request.getMethod())) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null && password != null) {
       
        String dbHost = "localhost";
        String dbUser = "root";
        String dbPass = "super";
        String dbName = "dorms";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://" + dbHost + "/" + dbName, dbUser, dbPass);

            String query = "SELECT password FROM login WHERE username = ?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, username);

            ResultSet result = stmt.executeQuery();

            if (result.next()) {
                String dbPassword = result.getString("password");
                if (password.equals(dbPassword)) {
                  	HttpSession ses = request.getSession();
                  	ses.setAttribute("username",username);
                  	String uname = (String)ses.getAttribute("username");
                  	System.out.println(uname);
                    %>
                    <script>
                        swal("Success", "Successfully Signed In", "success").then(function(){window.location="loginhome.jsp";});
                    </script>
                    <%
                } else {
                    // Incorrect password
                    %>
                    <script>
                        swal("Failed", "Wrong Password", "error").then(function(){window.location="login.jsp";});
                    </script>
                    <%
                }
            } else {
                // User not found
                %>
                <script>
                    swal("Failed", "User not found", "error").then(function(){window.location="login.jsp";});
                </script>
                <%
            }

            stmt.close();
            con.close();
        } catch (Exception e) {
            // Handle database connection or query error
            e.printStackTrace();
        }
    }
}
%>
</body>
</html>

