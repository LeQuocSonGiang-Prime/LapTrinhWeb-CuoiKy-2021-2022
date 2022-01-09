package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImp implements IUserDAO {
    @Override
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String URL = "jdbc:mysql://localhost:3306/project_web_cuoiky_website_batdongsan";
            String user = "root";
            String password = "";
            return DriverManager.getConnection(URL, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<UserModel> findAll() {
        List<UserModel> result = new ArrayList<UserModel>();
        String sql = "SELECT * FROM user";
        Connection connection = getConnection();
        PreparedStatement preStatement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                preStatement = connection.prepareStatement(sql);
                resultSet = preStatement.executeQuery();
                while (resultSet.next()) {
                    UserModel user = new UserModel();
                    user.setUsername(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("password"));
                    user.setAddress(resultSet.getString("address"));
                    user.setAvatar(resultSet.getString("avatar"));
                    user.setEmail(resultSet.getString("email"));
                    user.setPhone(resultSet.getString("phone"));
                    user.setFullName(resultSet.getString("fullname"));
                    result.add(user);
                }
                return result;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    connection.close();
                    if (preStatement != null) {
                        preStatement.close();
                    }
                    if (resultSet != null) {
                        resultSet.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    @Override
    public boolean checkLogin(String username, String password) {
        List<UserModel> result = new ArrayList<UserModel>();
        Connection connection = getConnection();
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        if (connection != null) {
            try {
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, username);
                statement.setString(1, password);
                ResultSet rs = statement.executeQuery();
                if(rs.next())
                    return true;
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
