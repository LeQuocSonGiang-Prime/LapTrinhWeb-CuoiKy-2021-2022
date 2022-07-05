package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.ImageDAO;
import vn.edu.hcmuaf.fit.mapper.imp.ImageMapper;

import java.util.List;

public class ImageDAOImp extends AbstractDAO<String> implements ImageDAO {

    @Override
    public List<String> findImageById_House(String id_house) {
        String sql = "SELECT image FROM image_house WHERE id_house = ?";
        return query(sql,new ImageMapper(), id_house);
    }
}
