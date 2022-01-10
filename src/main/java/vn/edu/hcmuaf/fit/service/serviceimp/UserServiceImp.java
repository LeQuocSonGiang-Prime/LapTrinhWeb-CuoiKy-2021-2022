package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.inject.Inject;

public class UserServiceImp implements IUserService {
    @Inject
    private IUserDAO userDAO;

    @Override
    public UserModel checkLogin(String username, String password) {
       return userDAO.checkLogin(username, password).get(0) ;
    }
}
