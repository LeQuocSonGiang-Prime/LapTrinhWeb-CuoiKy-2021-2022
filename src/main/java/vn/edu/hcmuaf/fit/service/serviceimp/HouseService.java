package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IHouseDAO;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import java.util.List;

public class HouseService implements IHouseService {

    @Inject
    private IHouseDAO houseDAO;


    @Override
    public List<HouseModel> selectAll() {
        return houseDAO.selectAll();
    }

    @Override
    public List<HouseModel> select24Element(int offSet) {

        return houseDAO.select24Element((offSet - 1) * 24 + 1);
    }

    @Override
    public int totalHouse() {
        return houseDAO.totalHouse();
    }

    @Override
    public HouseModel selectHouseById(String id_house) {
        return houseDAO.selectById(id_house);
    }
}
