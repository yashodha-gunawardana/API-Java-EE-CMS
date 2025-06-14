package org.example.model;

import jakarta.servlet.ServletContext;
import org.example.dao.UserDAO;
import org.example.dto.UserDTO;

public class UserModel {
    public static UserDTO findUser(ServletContext servletContext, String email, String password, String role) {
        return UserDAO.findUser(servletContext, email, password, role);
    }
}
