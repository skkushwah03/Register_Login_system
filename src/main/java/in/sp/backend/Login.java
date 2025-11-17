package in.sp.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginForm")
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String myemail = req.getParameter("email1");
        String mypass = req.getParameter("pass1");

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/Logreg",
                    "root",
                    "saurabh03052@/5"
            );

            ps = con.prepareStatement("SELECT * FROM register WHERE email=? AND pass=?");
            ps.setString(1, myemail);
            ps.setString(2, mypass);

            rs = ps.executeQuery();

            if (rs.next()) {

                HttpSession session = req.getSession();
                session.setAttribute("session_name", rs.getString("name"));

                // Make sure this file exists exactly with same case
                RequestDispatcher rd = req.getRequestDispatcher("/Profile.jsp");
                rd.forward(req, resp);

            } else {
                req.setAttribute("loginError", "Invalid Email or Password!");
                RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
                rd.forward(req, resp);
            }

        } catch (Exception e) {

            req.setAttribute("loginError", "Exception: " + e.getMessage());
            RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
            rd.forward(req, resp);

        } finally {
            try { if (rs != null) rs.close(); }   catch (Exception e) {}
            try { if (ps != null) ps.close(); }   catch (Exception e) {}
            try { if (con != null) con.close(); } catch (Exception e) {}
        }
    }
}