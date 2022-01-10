package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.UserModel;

public interface IUserService {
    UserModel checkLogin(String username, String password);

}
