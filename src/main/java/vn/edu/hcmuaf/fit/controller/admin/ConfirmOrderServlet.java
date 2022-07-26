package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.service.IBillService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ConfirmOrderServlet", value = "/ConfirmOrderServlet")
public class ConfirmOrderServlet extends HttpServlet {
    @Inject
    private IBillService billService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int index = Integer.parseInt(request.getParameter("index"));
        String id_bill = request.getParameter("id_bill");
        PrintWriter out = response.getWriter();
        String data = "";
        if (index == 2) {
            if (billService.removeBill(id_bill)) {
                BillModel.setListNewBill(billService.findAllBill());
                for (int i = 0; i < BillModel.getListNewBill().size(); i++) {
                    data += " <tr> <td style=\"padding: 7px;\"" + (i + 1) + "</td>\n" +
                            "<td style=\"padding: 7px 0 ;\"><a class=\"item_link\" href=\"\"\n" +
                            "           style=\"color:black;\">" + BillModel.getListNewBill().get(i).getUser().getFullName() + "</a></td>\n" +
                            "<td>" + BillModel.getListNewBill().get(i).getTime_Checkin() + "</td>\n" +

                            "<td>" + BillModel.getListNewBill().get(i).getTime_Checkout() + "</td>\n" +

                            "<td><a class=\"item_link\"\n" +
                            "           href=\"admin-detail-house?id_house=" + BillModel.getListNewBill().get(i).getHouse().getId() + "\"\n" +
                            "           style=\"color:black;\">" + BillModel.getListNewBill().get(i).getHouse().getName() + "</a></td>\n" +

                            "<td>" + BillModel.getListNewBill().get(i).getTime_Order() + "</td>\n" +

                            "<td style=\"display: flex; justify-content: center;\">\n";
                    if (BillModel.getListNewBill().get(i).getConfirm() == 0) {
                        data += "<i class=\"fa-solid fa-check\" onclick=\"confirmOrder(1, '" + BillModel.getListNewBill().get(i).getId() + "')\"\n" +
                                "          style=\"background-color: #dfe6e9;color: #0d6520;margin-right: 5px;\"></i>\n" +
                                "<i class=\"ti-trash\" style=\"background-color: #ff7675;\" onclick=\"confirmOrder(2, '" + BillModel.getListNewBill().get(i).getId() + "')\"></i>\n";
                    } else {
                        data += "<div class=\"confirm-order-admin confirmed\" style=\"cursor: not-allowed\">Đã xác nhận</div>\n";
                    }
                    data += "</td>  </tr>";
                }
            } else {
                data += 1;
            }
        }

        if (index == 1) {
            if (billService.confirmOrder(id_bill)) {
                BillModel.setListNewBill(billService.findAllBill());
                for (int i = 0; i < BillModel.getListNewBill().size(); i++) {
                    data += " <tr> <td style=\"padding: 7px;\">" + (i + 1) + "</td>\n" +
                            "<td style=\"padding: 7px 0 ;\"><a class=\"item_link\" href=\"\"\n" +
                            "           style=\"color:black;\">" + BillModel.getListNewBill().get(i).getUser().getFullName() + "</a></td>\n" +
                            "<td>" + BillModel.getListNewBill().get(i).getTime_Checkin() + "</td>\n" +
                            "<td>" + BillModel.getListNewBill().get(i).getTime_Checkout() + "</td>\n" +
                            "<td><a class=\"item_link\"\n" +
                            "           href=\"admin-detail-house?id_house=" + BillModel.getListNewBill().get(i).getHouse().getId() + "\"\n" +
                            "           style=\"color:black;\">" + BillModel.getListNewBill().get(i).getHouse().getName() + "</a></td>\n" +
                            "<td>" + BillModel.getListNewBill().get(i).getTime_Order() + "</td>\n" +
                            "<td style=\"display: flex; justify-content: center;\">\n";
                    if (BillModel.getListNewBill().get(i).getConfirm() == 0) {
                        data += "<i class=\"fa-solid fa-check\" onclick=\"confirmOrder(1, '" + BillModel.getListNewBill().get(i).getId() + "')\"\n" +
                                "          style=\"background-color: #dfe6e9;color: #0d6520;margin-right: 5px;\"></i>\n" +
                                "<i class=\"ti-trash\" style=\"background-color: #ff7675;\" onclick=\"confirmOrder(2, '" + BillModel.getListNewBill().get(i).getId() + "')\"></i>\n";
                    } else {
                        data += "<div class=\"confirm-order-admin confirmed\" style=\"cursor: not-allowed\">Đã xác nhận</div>\n";
                    }
                    data += "</td>  </tr>";
                }
            } else {
                data += 1;
            }
        }
        out.print(data);
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
