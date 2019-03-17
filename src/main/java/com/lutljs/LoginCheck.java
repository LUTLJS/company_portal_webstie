package com.lutljs;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginCheck {
    public static boolean loginCheck(String username,String password){
        String sql="select * from admin where admin_name='"+username+"' and admin_password='"+password+"'";
        try {
            Statement statement = Utils.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                return true;
            }else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
