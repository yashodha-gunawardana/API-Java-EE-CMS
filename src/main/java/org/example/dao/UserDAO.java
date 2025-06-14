package org.example.dao;

import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;
import org.example.dto.UserDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    public static UserDTO findUser(ServletContext servletContext, String email, String password, String role) throws SQLException {

        BasicDataSource dataSource = (BasicDataSource) servletContext.getAttribute("ds");

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement pstm = connection.prepareStatement("SELECT * FROM user WHERE email = ? AND password = ? AND role = ?");
            pstm.setString(1, email);
            pstm.setString(2, password);
            pstm.setString(3, role);

            ResultSet rs = pstm.executeQuery();
        }
    }
}
