package vn.edu.hcmuaf.fit.mapper.imp;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements IRowMapper<UserModel> {
    @Override
    public UserModel mapRow(ResultSet resultSet) {
        try {
            UserModel user = new UserModel();
            user.setId(resultSet.getString("id_user"));
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            user.setAddress(resultSet.getString("address"));
            user.setAvatar(resultSet.getString("avatar"));
            user.setEmail(resultSet.getString("email"));
            user.setPhone(resultSet.getString("phone"));
            user.setFullName(resultSet.getString("fullname"));
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
