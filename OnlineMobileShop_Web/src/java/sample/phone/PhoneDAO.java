/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.phone;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author think
 */
public class PhoneDAO {
    
    private static final String SEARCH="SELECT productID, productName, price, quantity FROM tblProduct";

    // 1. Get All Product
    public List<Phone> getAllProduct() {
        List< Phone> listProduct = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String id = rs.getString("productID");
                    String name = rs.getString("productName");
                    double price = rs.getDouble("price");
                    int quantity = rs.getInt("quantity");
                    listProduct.add(new Phone(id, name, price, quantity));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listProduct;
    }
    
}
