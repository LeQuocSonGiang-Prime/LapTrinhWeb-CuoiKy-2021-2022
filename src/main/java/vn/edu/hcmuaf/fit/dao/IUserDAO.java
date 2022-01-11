package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.Connection;
import java.util.List;

public interface IUserDAO extends IGenericDAO<UserModel>{
     Connection getConnection();

     List<UserModel> findAll();

     List<UserModel> getUserByUsernamePassword(String username, String password);

     /**
      check username for SIGNUP
      */
     List<UserModel> getUserByUsername(String username);
}
