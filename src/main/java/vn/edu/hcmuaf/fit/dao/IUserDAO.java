package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.Connection;
import java.util.List;

public interface IUserDAO {
    public Connection getConnection();

    public List<UserModel> findAll();
}
