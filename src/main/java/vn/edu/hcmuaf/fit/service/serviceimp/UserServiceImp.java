package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.annotation.ManagedBean;
import javax.inject.Inject;

@ManagedBean
public class UserServiceImp implements IUserService {
    @Inject
    private IUserDAO userDAO;

    @Override
    public UserModel checkLogin(String username, String password) {
        if (userDAO.getUserByUsernamePassword(username, password).size() > 0) {
            return userDAO.getUserByUsernamePassword(username, password).get(0);
        } else {
            return null;
        }
    }
}
