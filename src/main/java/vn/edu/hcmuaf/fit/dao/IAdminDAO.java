package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.AdminModel;

import java.util.List;

public interface IAdminDAO extends IGenericDAO<AdminModel> {

    List<AdminModel> checkLogin(String email, String password);

    boolean checkUserExit(String email);

    boolean insertAdmin(String email, String password);

    boolean updateAdmin(String email, String password, String avatar);

    AdminModel getFirstAdmin();
}
