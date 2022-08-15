package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.UserModel;

import java.sql.Connection;
import java.util.List;

public interface IUserDAO extends IGenericDAO<UserModel>{


     List<UserModel> findAll();

     int totalUser();

     List<UserModel> getUserByUsernamePassword(String username, String password);

     /**
      check username for SIGNUP
      */
     List<UserModel> getUserByUsername(String username);

     UserModel getUserByEmail(String email);

     UserModel getUserById(String id);



     void updateUser(UserModel user);
     void deleteUser(UserModel user);
     void insertUser(UserModel user);
     void activateUser(String email);

     UserModel selectById(String id_user);

    boolean updatePhone(String id_user, String phone);
}
