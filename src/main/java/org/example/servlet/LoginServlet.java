package org.example.servlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.dto.UserDTO;
import org.example.model.UserModel;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("userRole");

        ServletContext servletContext = getServletContext();
        UserDTO user = UserModel.findUser(servletContext, email, password, role);
    }

}
