package com.lutljs;			//指定类所在的包

import java.sql.*;						//导入数据库操作的类
import java.util.*;
import java.io.*;

public class DBConnection					
{

    private String FileName;			//配置文件名
    private int DBType;					//数据库类型
    private Connection conn;			//连接对象
    private String MySqlDriver;			//MYSQL Server驱动程序
    private String MySqlURL; 			//MYSQL Server连接字符串
        
   
    public DBConnection()
    {
    	conn = null;
    }

	public  Connection getConn()
	{

		String dbType = getPara("DBType");
		DBType= new Function().StrToInt(getPara("DBType"));
		switch(DBType)
		{
			case 1:return(getConnToMySql());
			default:return null;
		}	
	}
	
	
	public String getPara(String ParaName) 
	{
		FileName="E:\\IdeaProject\\myWeb\\src\\main\\java\\com\\DBConfig.properties";
		Properties prop= new Properties();
		try
		{
			Class<DBConnection> dbConnectionClass = DBConnection.class;
			System.out.println(dbConnectionClass);
			InputStream is = dbConnectionClass.getResourceAsStream(FileName);
			prop.load(is);
			if(is!=null) is.close();
		}
		catch(Exception e) {
//			e.printStackTrace();
			return "Error!";
		}
		return prop.getProperty(ParaName);
	}
    public Connection getConnToMySql()
    {
		try{
	 		MySqlDriver = getPara("MySQLDriver");	
	    	MySqlURL = getPara("MySQLURL");
	    	Class.forName(MySqlDriver).newInstance();
	    	conn = DriverManager.getConnection(MySqlURL);
			System.out.println(conn);
	    	}catch(Exception e){
	    		e.printStackTrace();
			System.out.println("hhhhahahhahahahahahahh");
//		    	return "操作数据库出错，请仔细检查" ;
		    	System.err.println(e.getMessage());
	    	}
	    return conn;
    }       
    
}
