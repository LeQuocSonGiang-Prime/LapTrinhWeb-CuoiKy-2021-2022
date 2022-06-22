package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.UserModel;


public interface IUserService {

    int totalUser();

    UserModel checkLogin(String username, String password);

    boolean checkUserExist(String email);

    void insertUser(String username, String password, String email, String fullname);

    void updateUser(UserModel user);

    void activateUser(String email);

    UserModel selectById(String id_user);

    UserModel selectByIDNoneInject(String id_uer);
}
