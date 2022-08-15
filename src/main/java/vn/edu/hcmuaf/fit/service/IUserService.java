package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.UserModel;

import java.util.List;


public interface IUserService {

    int totalUser();

    List<UserModel> findAll();

    UserModel checkLogin(String username, String password);

    boolean checkUserExist(String email);

    void insertUser(String username, String password, String email, String fullname);

    void updateUser(UserModel user);

    void activateUser(String email);

    UserModel selectById(String id_user);

    UserModel selectByIDNoneInject(String id_uer);

    boolean updatePhone(String id_user, String phone);
}
