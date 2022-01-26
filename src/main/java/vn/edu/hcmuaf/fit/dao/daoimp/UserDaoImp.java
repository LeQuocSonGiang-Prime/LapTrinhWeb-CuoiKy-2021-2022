package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.mapper.imp.UserMapper;
import vn.edu.hcmuaf.fit.model.UserModel;

import javax.annotation.ManagedBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@ManagedBean
public class UserDaoImp extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public List<UserModel> findAll() {
        String sql = "SELECT * FROM user";
        return query(sql, new UserMapper());
    }

    @Override
    public List<UserModel> getUserByUsernamePassword(String username, String password) {
        String sql = "SELECT * FROM user WHERE username = ? AND password = ? AND status = 1";
        return query(sql, new UserMapper(), username, password);
    }

    @Override
    public List<UserModel> getUserByUsername(String username) {
        String sql = "SELECT * FROM user WHERE username = ?";
        return query(sql, new UserMapper(), username);
    }

    @Override
    public UserModel getUserByEmail(String email) {
        String sql = "SELECT * FROM user WHERE email = ?";
        if (query(sql, new UserMapper(), email).size() > 0) {
            return query(sql, new UserMapper(), email).get(0);
        }
        return null;
    }

    @Override
    public UserModel getUserById(String id) {
        String sql = "SELECT * FROM user WHERE id_user = ?";
        if (query(sql, new UserMapper(), id).size() > 0) {
            return query(sql, new UserMapper(), id).get(0);
        }
        return null;
    }

    @Override
    public void updateUser(UserModel user) {

    }

    @Override
    public void activateUser(String email) {
        String sql = "UPDATE user SET status = 1 WHERE email = ?";
        update(sql, email);
    }

    @Override
    public void deleteUser(UserModel user) {

    }

    @Override
    public void insertUser(UserModel user) {
        String sql = "INSERT INTO user(id_user,username, password,fullname, email) VALUES(?,?,?,?,?)";
        //SET ID_USER AUTO, format: USER00000K
        int size = sizeTable(7);
        String next_number_id = "00000" + (size + 1);
        while (next_number_id.length() > 6) {
            next_number_id = next_number_id.substring(1);
        }
        String next_id = "USER" + next_number_id;
        //CHECK ID is EXISTS
        UserModel userExit = getUserById(next_id);
        System.out.println("userExit:"+userExit);
        System.out.println("ID user:"+next_id);
        int i = 0;
        while (userExit != null) {
            i++;
            next_number_id = "00000" + (size + 1 + i);
            while (next_number_id.length() > 6) {
                next_number_id = next_number_id.substring(1);
            }
            next_id = "USER" + next_number_id;
            userExit = getUserById(next_id);
        }
        // after has id
        update(sql, next_id, user.getUsername(), user.getPassword(), user.getFullName(), user.getEmail());
    }


}
