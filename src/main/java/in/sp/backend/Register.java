package in.sp.backend;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/regForm")
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("name1");
        String email = req.getParameter("email1");
        String pass = req.getParameter("pass1");
        String gender = req.getParameter("gender1");
        String city = req.getParameter("city1");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/Logreg",
                    "root",
                    "saurabh"
            );

            PreparedStatement check = con.prepareStatement(
                    "SELECT * FROM register WHERE email=?");
            check.setString(1, email);

            ResultSet rs = check.executeQuery();
            if (rs.next()) {
                req.setAttribute("message", "Email already registered!");
                req.setAttribute("msgColor", "red");
                req.getRequestDispatcher("Register.jsp").forward(req, resp);
                return;
            }

            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO register VALUES (?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.setString(4, gender);
            ps.setString(5, city);

            int count = ps.executeUpdate();

            if (count > 0) {
                req.setAttribute("message", "User Registered Successfully!");
                req.setAttribute("msgColor", "green");
            } else {
                req.setAttribute("message", "Registration Failed!");
                req.setAttribute("msgColor", "red");
            }

            req.getRequestDispatcher("Register.jsp").forward(req, resp);

        } catch (Exception e) {
            req.setAttribute("message", "Error: " + e.getMessage());
            req.setAttribute("msgColor", "red");
            req.getRequestDispatcher("Register.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.sendRedirect("Register.jsp"); // 405 FIX
    }
}
