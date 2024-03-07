package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns={"/deleteitem"})
public class DeleteCartItemServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Lấy idUser và idCar từ request
        String userId = request.getParameter("idUser");
        String carId = request.getParameter("idCar");

        // Gọi phương thức xóa sản phẩm từ giỏ hàng trong cookie
        boolean deleteSuccess = deleteCartItem(userId, carId, request, response);

        // Trả về kết quả cho trình duyệt
        response.setContentType("text/html");
        response.getWriter().println(deleteSuccess ? "Item deleted successfully!" : "Failed to delete item.");
    }

    private boolean deleteCartItem(String userId, String carId, HttpServletRequest request, HttpServletResponse response) {
        // Lấy danh sách cookie từ request
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                // Kiểm tra cookie có tên là "cart" không
                if (cookie.getName().equals("cart")) {
                    // Lấy giá trị của cookie
                    String cartValue = cookie.getValue();

                    // Xử lý logic xóa sản phẩm từ giỏ hàng ở đây (dựa trên userId và carId)
                    // ...

                    // Cập nhật giá trị cookie sau khi xóa
                    cookie.setValue("done");

                    // Cập nhật thời gian sống của cookie (có thể đặt là 0 để xóa cookie)
                    cookie.setMaxAge(0);

                    // Gửi cookie đã được cập nhật về lại trình duyệt
                    response.addCookie(cookie);

                    return true;
                }
            }
        }
        return false;
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
