package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.ICommentDAO;
import vn.edu.hcmuaf.fit.dao.daoimp.CommentDAOImp;
import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.CommentModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IBillService;
import vn.edu.hcmuaf.fit.service.ICommentService;
import vn.edu.hcmuaf.fit.service.IHouseService;
import vn.edu.hcmuaf.fit.service.serviceimp.CommentServiceImp;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ControllerDetail", value = "/chi-tiet")
public class ControllerDetail extends HttpServlet {

    @Inject
    private IBillService billService;
    @Inject
    private IHouseService houseService;
    @Inject
    private ICommentService commentService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HouseModel currentHouse = houseService.selectHouseById(request.getParameter("id_house"));


        List<BillModel> listBill = billService.findBillByHouse(request.getParameter("id_house"));
        request.setAttribute("listBill", listBill);
        List<HouseModel> listHouse = houseService.select4Element(2);
        request.setAttribute("listHouse", listHouse);
        List<CommentModel> listComment = commentService.selectByHouse(request.getParameter("id_house"));
        double star = 0;
        if (listComment.size() != 0) {
            for (CommentModel c : listComment) {
                star += c.getStar();
            }
            currentHouse.setStar(Double.parseDouble(String.format("%,.1f", star / listComment.size())));
        } else {
            currentHouse.setStar(0);
        }
        request.setAttribute("currentHouse", currentHouse);
        request.setAttribute("listComment", listComment);
        request.getRequestDispatcher("/views/web/detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


    private double setStar(String id_house) {
        double star = 0;
        ICommentDAO commentDAO = new CommentDAOImp();
        List<CommentModel> listComment = commentDAO.selectCommentByHouse(id_house);
        for (CommentModel c : listComment) {
            star += c.getStar();
        }
        return Double.parseDouble(String.format("%,.1f", star / listComment.size()));
    }
}
