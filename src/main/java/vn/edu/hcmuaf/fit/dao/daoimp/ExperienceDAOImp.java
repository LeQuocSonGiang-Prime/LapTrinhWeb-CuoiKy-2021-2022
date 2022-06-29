package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IExperienceDAO;
import vn.edu.hcmuaf.fit.mapper.IRowMapper;
import vn.edu.hcmuaf.fit.mapper.imp.ExperienceMapper;
import vn.edu.hcmuaf.fit.model.ExperienceModel;

import java.util.List;

public class ExperienceDAOImp extends AbstractDAO<ExperienceModel> implements IExperienceDAO {
    @Override
    public List<ExperienceModel> findAll() {
        String sql = "SELECT * FROM place";
        return query(sql, new ExperienceMapper());
    }
}
