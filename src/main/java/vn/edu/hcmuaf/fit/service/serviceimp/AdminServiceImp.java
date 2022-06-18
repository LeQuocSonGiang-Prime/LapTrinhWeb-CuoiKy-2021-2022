package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IAdminDAO;
import vn.edu.hcmuaf.fit.model.AdminModel;
import vn.edu.hcmuaf.fit.service.IAdminService;

import javax.inject.Inject;

public class AdminServiceImp implements IAdminService {
    @Inject
    private IAdminDAO adminDAO;

    @Override
    public boolean checkUserExit(String email) {
        return false;
    }

    @Override
    public AdminModel checkLogin(String email, String password) {
        if (adminDAO.checkLogin(email, password).size() > 0) {
            return adminDAO.checkLogin(email, password).get(0);
        } else
            return null;
    }

    @Override
    public boolean insertAdmin(String email, String password) {
        return false;
    }

    @Override
    public boolean updateAdmin(String email, String password, String avatar) {
        return false;
    }
}
