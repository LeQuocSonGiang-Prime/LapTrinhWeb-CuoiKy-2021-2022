package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.ICommentDAO;
import vn.edu.hcmuaf.fit.dao.daoimp.CommentDAOImp;
import vn.edu.hcmuaf.fit.model.CommentModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.ICommentService;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ControllerConfirm", value = "/xac-nhan-dat-cho")
public class ControllerConfirmOrder extends HttpServlet {
    @Inject
    private IHouseService houseService;
    @Inject
    private ICommentService commentService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Date time_Checkin = new Date(request.getParameter("time-checkin"));
        Date time_Checkout = new Date(request.getParameter("time-checkout"));
        int date_diff = Integer.parseInt(request.getParameter("date-diff"));
        String id_house = request.getParameter("id_house");
        request.setAttribute("time-checkin", time_Checkin);
        request.setAttribute("time-checkout", time_Checkout);
        HouseModel house = houseService.selectHouseById(id_house);
        house.setStar(setStar(id_house));
        request.setAttribute("house", house);
        request.setAttribute("totalComment", commentService.selectByHouse(id_house).size());
        request.setAttribute("date-diff", date_diff);


        request.getRequestDispatcher("/views/web/confirm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


    private double setStar(String id_house) {
        double star = 0;
        List<CommentModel> listComment = commentService.selectByHouse(id_house);
        if (listComment.size() != 0) {
            for (CommentModel c : listComment) {
                star += c.getStar();
            }
            return Double.parseDouble(String.format("%,.1f", star / listComment.size()));
        } else {
            return 0;
        }
    }
}
