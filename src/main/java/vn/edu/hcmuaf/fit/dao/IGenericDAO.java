package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.mapper.IRowMapper;

import java.sql.Connection;
import java.util.List;

public interface IGenericDAO<T> {
    Connection getConnection();

    <T> List<T> query(String sql, IRowMapper<T> row, Object... parameter);

    boolean update(String sql, Object... parameter);

    int sizeTable(int nameTable);

    int totalItem(String sql,Object... parameter);

}
