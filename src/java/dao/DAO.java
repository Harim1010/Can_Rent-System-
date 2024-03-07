/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Car;
import entity.CarType;
import entity.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

/**
 *
 * @author User
 */
public class DAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Car> getPopularCar() {
        List<Car> list = new ArrayList<>();
        String sql = "select top 6* from Car where dailyprice < 90";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(8), rs.getInt(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Car> getAllCar() {
        List<Car> list = new ArrayList<>();
        String sql = "select * from Car";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(8), rs.getInt(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Account login(String user, String pass) {
        String sql = "select *\n"
                + "	   from account\n"
                + "	   where [user] = ? and password= ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String sql = "select *\n"
                + "	   from account\n"
                + "	   where [user] = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        return null;
    }

    public void signup(String user, String pass) {
        String sql = "insert into account values(?,?,0,0)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            //rs=ps.executeQuery(); sai vi khong co bang result (ko co ket qua tra ve)
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Car> getCarbySellerId(int seller_id, String tid) {
        List<Car> list = new ArrayList<>();
        String sql1 = "select *\n"
                + "from CAR\n"
                + "where Seller_id = ?";
        String sql2 = "select *\n"
                + "from CAR\n"
                + "where Seller_id != ?";
        try {
            con = new DBContext().getConnection();
            if (tid.equals("0")) {
                ps = con.prepareStatement(sql1);
                ps.setInt(1, seller_id);
            } else {
                ps = con.prepareStatement(sql2);
                ps.setInt(1, seller_id);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(8), rs.getInt(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void deleteCarbyVehicleId(String cid) {
        String sql = " delete from CAR\n"
                + "where vehicle_id = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, cid);
            ps.executeUpdate(); //ko tra ve bang result nen chi can executeupdate
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Car> list = new ArrayList();
//        //list = dao.getCarOtherbySellerId(1,"0");
//        System.out.println(dao.getPopularCar());
        
        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());
        System.out.println(cld.getTime());
    }

    public List<CarType> getAllCarType() {
        List<CarType> list = new ArrayList<>();
        String sql = "select * from car_type";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new CarType(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Car> getAllCarByTypeId(String type_id) {
        List<Car> list = new ArrayList<>();
        String sql1 = "select * from car where type_id = ?";
        String sql2 = "select * from car";
        try {
            con = new DBContext().getConnection();
            if (type_id.equals("0")) {
                ps = con.prepareStatement(sql2);
            } else {
                ps = con.prepareStatement(sql1);
                ps.setString(1, type_id);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(8), rs.getInt(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void addNewCar(String carname, String price, String image, String cartype, String year, String description, int sid) {
        String sql = "INSERT INTO CAR values (?,?,?,?,?,?,?,?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, carname);
            ps.setString(2, price);
            ps.setString(3, year);
            ps.setString(4, image);
            ps.setString(5, description);
            ps.setString(6, "null");
            ps.setString(7, cartype);
            ps.setInt(8, sid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Car getCarById(String id) {
        String sql = "select * from car where vehicle_id = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            ps = con.prepareStatement(sql);
            while (rs.next()) {
                return new Car(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(8), rs.getInt(9), rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void editCar(String carname, String price, String image, String cartype, String year, String description, String pid) {
        String sql = "update CAR\n"
                + "  set [CName] = ?,\n"
                + "  [Dailyprice] = ?,\n"
                + "  [description] = ?,\n"
                + "  [Type_id] = ?,\n"
                + "  [image] = ?,\n"
                + "  [Year] = ?\n"
                + "  \n"
                + "  where Vehicle_id = ? ";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, carname);
            ps.setString(2, price);
            ps.setString(3, description);
            ps.setString(4, cartype);
            ps.setString(5, image);
            ps.setString(6, year);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List displayCart() {
        String sql = "select * from Cart";
        List<Cart> list = new ArrayList<>();
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Cart(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getDate(4)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void inserttoCart(String idUser, String idCar, String start_date, String return_date) {
        String sql = "insert into Cart values(?,?,?,?)";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, idUser);
            ps.setString(2, idCar);
            ps.setString(3, start_date);
            ps.setString(4, return_date);
            //rs=ps.executeQuery(); sai vi khong co bang result (ko co ket qua tra ve)
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void TotalofACar(Date a, Date b, float price) {
        String sql = "SELECT DATEDIFF(day,?,?)*? AS days_difference\n"
                + "from cart";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setDate(1, a);
            ps.setDate(2, b);
            ps.setFloat(3, price);
            //rs=ps.executeQuery(); sai vi khong co bang result (ko co ket qua tra ve)
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
        public List<Cart> getListCart(int idUser1) {
        List<Cart> list = new ArrayList<>();
        String xSql = "select * from Cart where idUser = " + idUser1;
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            int idUser, idPro;
            Date start_date,return_date;    
            while (rs.next()) {
                idUser = rs.getInt("idUser");
                idPro = rs.getInt("idPro");
                start_date = rs.getDate("start_date");
                return_date = rs.getDate("return_date");
                Cart x = new Cart(idUser, idPro, start_date,return_date);
                list.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
