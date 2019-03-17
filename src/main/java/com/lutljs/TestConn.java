package com.lutljs;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestConn {
    public static void main(String[] args) throws SQLException {
        Connection conn = Utils.getConnection();
        Statement statement = conn.createStatement();

        String sql="select * from admin where admin_name = '"+"Jimmy"+"'";
        ResultSet resultSet = statement.executeQuery(sql);
        boolean next = resultSet.next();
        System.out.println(next);
        String string = resultSet.getString(1);
        String admin_name = resultSet.getString("admin_name");
        System.out.println(admin_name);
        System.out.println(string);
    }
}
