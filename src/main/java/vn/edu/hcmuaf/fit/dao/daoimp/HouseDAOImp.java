package vn.edu.hcmuaf.fit.dao.daoimp;

import vn.edu.hcmuaf.fit.dao.IHouseDAO;
import vn.edu.hcmuaf.fit.mapper.imp.HouseCountMapper;
import vn.edu.hcmuaf.fit.mapper.imp.HouseMapper;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IBillService;
import vn.edu.hcmuaf.fit.service.ICommentService;
import vn.edu.hcmuaf.fit.service.serviceimp.BillServiceImp;
import vn.edu.hcmuaf.fit.service.serviceimp.CommentServiceImp;

import javax.inject.Inject;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

public class HouseDAOImp extends AbstractDAO<HouseModel> implements IHouseDAO {

    @Override
    public List<HouseModel> selectAll() {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house";
        return query(sql, new HouseMapper());
    }

    @Override
    public List<HouseModel> select24Element(int offSet) {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house LIMIT ?, 24";
        return query(sql, new HouseMapper(), offSet);
    }

    @Override
    public int totalHouse() {
        return sizeTable(5);
    }

    @Override
    public HouseModel selectById(String id_house) {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house WHERE house.id_house = ?";
        return query(sql, new HouseMapper(), id_house).get(0);
    }

    @Override
    public List<HouseModel> selectAllNoneExist() {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house";
        return query(sql, new HouseMapper());
    }

    @Override
    public boolean removeHouseById(String id_house) {
        String sql = "DELETE FROM house WHERE id_house = ?";
        IBillService billService = new BillServiceImp();
        billService.removeBillByIdHouse(id_house);
        ICommentService commentService = new CommentServiceImp();
        commentService.removeCommentByIdHouse(id_house);
        return update(sql, id_house);
    }

    @Override
    public List<HouseModel> select4Element(int index) {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house LIMIT ?, 4";
        return query(sql, new HouseMapper(), index);
    }

    @Override
    public List<HouseModel> select24HouseByKind(int type, int index) {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house WHERE type = ? LIMIT ?, 24 ";
        return query(sql, new HouseMapper(), type, index);
    }

    @Override
    public int countHouseByType(int type) {
        String sql = "SELECT COUNT(*) FROM house WHERE type = ?";
        return totalItem(sql, type);
    }

    @Override
    public List<HouseModel> select24ElementByLocation(String locationHouse, int ipageNumber) {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house WHERE location LIKE '%" + locationHouse + "%'  LIMIT ?, 24 ";
        return query(sql, new HouseMapper(), ipageNumber);
    }

    @Override
    public List<HouseModel> select24HouseByTypeAndLocation(String typeOfHouse, String locationHouse, int ipageNumber) {
        String sql = "SELECT house.id_house, name, type, tutorial, address, detail, foryou, price, saleprice, image FROM house LEFT JOIN image_house ON image_house.id_house = house.id_house WHERE location LIKE '%" + locationHouse + "%' AND type = ?  LIMIT ?, 24 ";
        return query(sql, new HouseMapper(), typeOfHouse, ipageNumber);
    }

    @Override
    public int findHouseByID(String id_house) {
        String sql = "SELECT EXISTS( SELECT * FROM house WHERE id_house = ?) AS exist";
        return query(sql, new HouseCountMapper(), id_house).get(0);
    }

    private boolean checkExistImage(String id_image) {
        String sql = "SELECT EXISTS( SELECT * FROM image_house WHERE id_image = ?) AS exist";
        return query(sql, new HouseCountMapper(), id_image).get(0) != -1;
    }

    @Override
    public boolean addHouse(HouseModel house) {
        String sqlHouse = "INSERT INTO house (`id_house`, `name`, `type`, `tutorial`,`address`, `detail`, `foryou`, `price`) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
        String sqlImage = "INSERT INTO image_house (`id_image`, `id_house`, `image`)";

        Connection connection = null;
        PreparedStatement stm = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            //House
            System.out.println("id"+ house.getId());
            System.out.println("name"+ house.getName());
            System.out.println("type"+ house.getType());
            System.out.println("tutorial"+ house.getTutorial());
            System.out.println("address"+ house.getAddress());
            System.out.println("detail"+ house.getDetail());
            System.out.println("foryou"+ house.getForYou());
            System.out.println("price"+ house.getPrice());
            stm = connection.prepareStatement(sqlHouse);
            setParameter(stm, house.getId(), house.getName(), house.getType(), house.getTutorial(), house.getAddress(), house.getDetail(), house.getForYou(), house.getPrice());
            stm.executeUpdate();
            //Image
            for (String i : house.getImage()) {
                stm = connection.prepareStatement(sqlImage);
                setParameter(stm, createID(), house.getId(), i);
                stm.executeUpdate();
            }
            connection.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                connection.rollback();
            } catch (SQLException f) {
                f.printStackTrace();
            }
            return false;
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

    public String createID() {
        byte[] arr = new byte[10];
        new Random().nextBytes(arr);
        String result = new String(arr, Charset.forName("UTF-8"));
        while (checkExistImage(result)) {
            new Random().nextBytes(arr);
            result = new String(arr, Charset.forName("UTF-8"));
        }
        System.out.println(result);
        return result;
    }
}
