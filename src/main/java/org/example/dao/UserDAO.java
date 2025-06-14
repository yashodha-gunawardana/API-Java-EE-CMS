package org.example.dao;

import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;
import org.example.dto.UserDTO;

import java.sql.SQLException;

public class UserDAO {
    public static UserDTO findUser(ServletContext servletContext, String email, String password, String role) throws SQLException {

        BasicDataSource dataSource = (BasicDataSource) servletContext.getAttribute("ds");

}
