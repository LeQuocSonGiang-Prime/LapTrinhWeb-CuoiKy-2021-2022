package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IAdminDAO;
import vn.edu.hcmuaf.fit.mapper.imp.AdminMapper;
import vn.edu.hcmuaf.fit.model.AdminModel;

import java.util.List;

public class AdminDAOImp extends AbstractDAO<AdminModel> implements IAdminDAO {

    @Override
    public int sizeTable(int nameTable) {
        return 0;
    }

    @Override
    public List<AdminModel> checkLogin(String email, String password) {
        String sql = "SELECT * FROM admin WHERE username = ? AND password = ?";
        return query(sql, new AdminMapper(), email, password);
    }

    @Override
    public boolean checkUserExit(String email) {
        return false;
    }

    @Override
    public boolean insertAdmin(String email, String password) {
        return false;
    }

    @Override
    public boolean updateAdmin(String email, String password, String avatar) {
        return false;
    }

    @Override
    public AdminModel getFirstAdmin() {
        String sql = "SELECT * FROM admin WHERE id_admin = 'ADMIN00001'";
            return query(sql, new AdminMapper()).get(0);
    }
}
