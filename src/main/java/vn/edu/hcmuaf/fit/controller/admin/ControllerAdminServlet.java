package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.*;
import vn.edu.hcmuaf.fit.service.*;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "admin-trang-chu", value = "/admin-trang-chu")
public class ControllerAdminServlet extends HttpServlet {

    private AdminModel adminCurrent;
    @Inject
    private IBillService billService;
    @Inject
    private IHouseService houseService;
    @Inject
    private IUserService userService;
    @Inject
    private ICommentService commentService;
    @Inject
    private IAdminService adminService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HouseModel.getListResult().clear();
        setAdminCurent(adminService.getFirstAdmin());
        UserModel.getListUser().clear();
        BillModel billModel = new BillModel();
        billModel.setTotalBill(billService.totalBill());
        billModel.setListNewBill(billService.findAllBill());
        UserModel.setTotalUser(userService.totalUser());
        HouseModel.setTotalHouse( houseService.totalHouse());
        UserModel.setListUser(userService.findAll());
        request.setAttribute("bill", billModel);
        request.setAttribute("user", new UserModel());
        request.setAttribute("adminCurrent", adminCurrent);

        List<HouseModel> listHouse = HouseModel.getListResult();
        List<HouseModel> listAllHouse = houseService.selectAll();
        for(HouseModel i : listHouse){
            listAllHouse.removeIf(j -> j.equals(i));
        }
        listAllHouse.addAll(listHouse);
        Collections.sort(listAllHouse);
        HouseModel.setListResult(listAllHouse);

        setStarForHouse();
        request.setAttribute("listComment", CommentModel.getListComment());
        request.setAttribute("listHouse", HouseModel.getListResult());

        request.getRequestDispatcher("/views/admin/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public AdminModel getAdminCurent() {
        return adminCurrent;
    }

    public void setAdminCurent(AdminModel adminCurent) {
        this.adminCurrent = adminCurent;
    }

    private void setStarForHouse(){
        CommentModel.setListComment(commentService.findAll());
        for(HouseModel h : HouseModel.getListResult()){
            List<CommentModel> listCmt = CommentModel.selectCommentByIdHouse(h.getId());
            DecimalFormat df = new DecimalFormat("#,###.##");
            if(listCmt.size()>0){
                int totalStar = 0;
                for(CommentModel c : listCmt){
                    totalStar+=c.getStar();
                }
                h.setStar(Double.parseDouble(String.format("%,.1f",(double)  totalStar/listCmt.size())));
            }
        }
    }
}
