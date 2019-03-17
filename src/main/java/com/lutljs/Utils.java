package com.lutljs;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Utils {

    private static Properties properties=new Properties();
    static {
        InputStream inputStream = Utils.class.getResourceAsStream("../DBConfig.properties");
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static Connection getConnection(){
        Connection coon=null;
        try {
            Class.forName(properties.getProperty("MySQLDriver"));
            coon= DriverManager.getConnection(properties.getProperty("MySQLURL"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        }
        return coon;
    }
    public static void main(String[] args) {
        Connection connection = getConnection();
        System.out.println(connection);
    }
}
