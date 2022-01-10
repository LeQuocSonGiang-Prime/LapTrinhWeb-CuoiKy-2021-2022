package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.mapper.imp.UserMapper;
import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImp extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public List<UserModel> findAll() {
        String sql = "SELECT * FROM user";
        return query(sql, new UserMapper());
    }

    @Override
    public  List<UserModel> checkLogin(String username, String password) {
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        return query(sql, new UserMapper());
    }

}
