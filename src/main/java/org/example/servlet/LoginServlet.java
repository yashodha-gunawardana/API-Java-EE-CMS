package org.example.servlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.dao.UserDAO;
import org.example.model.User;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        ServletContext servletContext = getServletContext();

        try {
            User user = UserDAO.findUser(servletContext, email, password);

            if (user != null) {
                HttpSession session = req.getSession();
                session.setAttribute("user", user);

                if ("Admin".equals(user.getRole())) {
                    resp.sendRedirect("Admin_dashboard.jsp");
                }else if ("Employee".equals(user.getRole())) {
                    resp.sendRedirect("Employee_dashboard.jsp");
                }else {
                    req.setAttribute("error", "Unknown role");
                    req.getRequestDispatcher("login.jsp").forward(req, resp);
                }

            }else {
                req.setAttribute("error", "Invalid email or password");
                req.getRequestDispatcher("Login.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }

    }

}
