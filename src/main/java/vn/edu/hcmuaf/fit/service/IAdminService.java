package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.AdminModel;

public interface IAdminService {

    boolean checkUserExit(String email);

    AdminModel checkLogin(String email, String password);

    boolean insertAdmin(String email, String password);

    boolean updateAdmin(String email, String password, String avatar);
}
