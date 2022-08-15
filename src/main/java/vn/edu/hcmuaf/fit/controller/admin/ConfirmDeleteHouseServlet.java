package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ConfirmDeleteHouseServlet", value = "/ConfirmDeleteHouseServlet")
public class ConfirmDeleteHouseServlet extends HttpServlet {

    @Inject
    private IHouseService houseService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String id_house = request.getParameter("id_house");
        PrintWriter out = response.getWriter();

        String data = "";
        if (houseService.removeHouseById(id_house)) {
            HouseModel.setListResult(houseService.selectAll());System.out.println("1");
            for (int i = 0; i < HouseModel.getTotalHouse(); i++) {
                data += "<tr>\n" +
                        "                        <td>" + (i + 1) + "\n" +
                        "                        </td>\n" +
                        "                        <td style=\"padding: 7px 0 ;\"><a class=\"item_link\"\n" +
                        "                                                        href=\"admin-detail-house?id_house=" + HouseModel.getListResult().get(i).getId() + "\"\n" +
                        "                                                        style=\"color:black;\">" + HouseModel.getListResult().get(i).getName() + "\"\n" +
                        "                        </a></td>\n" +
                        "                        <td>\n" +
                        "                            " + HouseModel.getListResult().get(i).getTotalDayOrder() + "\n" +
                        "                        </td>\n" +
                        "                      " + HouseModel.getListResult().get(i).getStar() + "\n" +
                        "                        </td>\n" +
                        "                        <td>\n" +
                        "                            <i class=\"ti-pencil\" style=\"background-color: #dfe6e9;\" onclick=\"confirmChange(1, '" + HouseModel.getListResult().get(i).getId() + "')\"></i>\n" +
                        "                            <i class=\"ti-trash\" style=\"background-color: #ff7675;\"  onclick=\"confirmChange(2, '" + HouseModel.getListResult().get(i).getId() + "')\"></i>\n" +
                        "                        </td>\n" +
                        "                    </tr>";
            }
        }else{
            data+=1;
        }
        System.out.println("2");
        out.print(data);
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
