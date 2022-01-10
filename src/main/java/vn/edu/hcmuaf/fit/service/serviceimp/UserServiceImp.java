package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.inject.Inject;

public class UserServiceImp implements IUserService {
    @Inject
    private IUserDAO userDAO;

    @Override
    public boolean checkLogin(String username, String password) {
        if (userDAO.checkLogin(username, password) != null && userDAO.checkLogin(username, password).size() > 0)
            return true;
        return false;
    }
}
