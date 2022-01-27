package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.annotation.ManagedBean;
import javax.inject.Inject;
import java.math.BigInteger;
import java.security.MessageDigest;

@ManagedBean
public class UserServiceImp implements IUserService {
    @Inject
    private IUserDAO userDAO;

    @Override
    public UserModel checkLogin(String username, String password) {
        if (userDAO.getUserByUsernamePassword(username, hashPasword(password)).size() > 0) {
            return userDAO.getUserByUsernamePassword(username, hashPasword(password)).get(0);
        } else {
            return null;
        }
    }

    @Override
    public boolean checkUserExist(String email) {
        return userDAO.getUserByEmail(email) != null;
    }



    @Override
    public void insertUser(String username, String password, String email, String fullname) {
       UserModel user = new UserModel(username, hashPasword(password), email, fullname);
        userDAO.insertUser(user);
    }

    @Override
    public void updateUser(UserModel user) {
        userDAO.updateUser(user);
    }

    @Override
    public void activateUser(String email) {
        userDAO.activateUser(email);
    }

    private String hashPasword(String pass) {
        try {
            MessageDigest ma = MessageDigest.getInstance("MD5");
            ma.update(pass.getBytes());
            byte[] byteData = ma.digest();
            BigInteger number = new BigInteger(1, byteData);
            return number.toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
        UserServiceImp userServiceImp = new UserServiceImp();
        userServiceImp.insertUser("songiang","12345","lequocsongiang@gmail.com","Lê Quốc Sơn Giang");
    }
}
