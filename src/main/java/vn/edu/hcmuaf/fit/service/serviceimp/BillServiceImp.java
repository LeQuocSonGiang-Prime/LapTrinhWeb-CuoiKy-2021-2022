package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IBillDAO;
import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.service.IBillService;

import javax.inject.Inject;
import java.util.List;

public class BillServiceImp implements IBillService {

    @Inject
    private IBillDAO billDAO;
    @Override
    public int totalBillOfUser(String id_user) {
        return billDAO.totalBillOfUser(id_user);
    }

    @Override
    public int totalBillOfHouse(String id_house) {
        return billDAO.totalBillOfHouse(id_house);
    }

    @Override
    public List<BillModel> findBillByUser(String id_user) {
        return billDAO.findBillByUser(id_user);
    }

    @Override
    public List<BillModel> findBillByHouse(String id_house) {
        return billDAO.findBillByHouse(id_house);
    }
}
