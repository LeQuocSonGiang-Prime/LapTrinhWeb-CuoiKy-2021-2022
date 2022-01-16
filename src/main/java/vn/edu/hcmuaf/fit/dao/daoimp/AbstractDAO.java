package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IGenericDAO;
import vn.edu.hcmuaf.fit.mapper.IRowMapper;

import javax.annotation.ManagedBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@ManagedBean
public class AbstractDAO<T> implements IGenericDAO<T> {


    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String URL = "jdbc:mysql://localhost:3306/database?useUnicode=true&characterEncoding=utf-8";
            String user = "root";
            String password = "";
            return DriverManager.getConnection(URL, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public <T> List<T> query(String sql, IRowMapper<T> row, Object... parameter) {
        List<T> result = new ArrayList<T>();
        Connection connection = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            connection = getConnection();
            stm = connection.prepareStatement(sql);
            setParameter(stm, parameter);
            rs = stm.executeQuery();
            while (rs.next()) {
                result.add(row.mapRow(rs));
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    @Override
    public void update(String sql, Object... parameter) {
        System.out.println("update");
        Connection connection = null;
        PreparedStatement stm = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            stm = connection.prepareStatement(sql);
            setParameter(stm, parameter);
            stm.executeUpdate();
            connection.commit();
            System.out.println("method update in Abstract class");
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                connection.rollback();
            } catch (SQLException f) {
                f.printStackTrace();
            }
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (stm != null) {
                    stm.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public int sizeTable(int nameTable) {

        String sqlUser = "SELECT COUNT(*) FROM user";
        String sqlBill = "SELECT COUNT(*) FROM bill";
        String sqlHouse = "SELECT COUNT(*) FROM house";
        String sqlPlace = "SELECT COUNT(*) FROM place";
        String sqlAdmin = "SELECT COUNT(*) FROM admin";
        String sqlFavourite = "SELECT COUNT(*) FROM favourite";
        String sqlComment = "SELECT COUNT(*) FROM comment";
        Connection connection = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            connection = getConnection();
            switch (nameTable) {
                case 1:
                    stm = connection.prepareStatement(sqlAdmin);
                    break;
                case 2:
                    stm = connection.prepareStatement(sqlBill);
                    break;
                case 3:
                    stm = connection.prepareStatement(sqlComment);
                    break;
                case 4:
                    stm = connection.prepareStatement(sqlFavourite);
                    break;
                case 5:
                    stm = connection.prepareStatement(sqlHouse);
                    break;
                case 6:
                    stm = connection.prepareStatement(sqlPlace);
                    break;
                case 7:
                    stm = connection.prepareStatement(sqlUser);
                    break;
            }
            assert stm != null;
            rs = stm.executeQuery();
            rs.next();
            return rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    private void setParameter(PreparedStatement stm, Object... parameters) {
        try {
            for (int i = 0; i < parameters.length; i++) {
                Object parameter = parameters[i];
                int index = i + 1;
                if (parameter instanceof Long) {
                    stm.setLong(index, (Long) parameter);
                } else if (parameter instanceof String) {
                    stm.setString(index, (String) parameter);
                } else if (parameter instanceof Double) {
                    stm.setDouble(index, (Double) parameter);
                } else if (parameter instanceof Date) {
                    stm.setDate(index, (java.sql.Date) parameter);
                } else if (parameter instanceof Integer) {
                    stm.setInt(index, (Integer) parameter);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}