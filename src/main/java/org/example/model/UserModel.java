package org.example.model;

import jakarta.servlet.ServletContext;
import org.example.dao.UserDAO;
import org.example.dto.UserDTO;

import java.sql.SQLException;

public class UserModel {
    public static UserDTO findUser(ServletContext servletContext, String email, String password) throws SQLException {
        return UserDAO.findUser(servletContext, email, password);
    }
}
