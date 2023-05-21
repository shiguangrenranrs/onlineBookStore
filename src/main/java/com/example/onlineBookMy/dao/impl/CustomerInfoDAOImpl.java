package com.example.onlineBookMy.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import com.example.onlineBookMy.bean.CustomerInfo;
import com.example.onlineBookMy.dao.ICustomerInfoDAO;
import com.example.onlineBookMy.db.DBManager;
import com.mysql.jdbc.PreparedStatement;

public class CustomerInfoDAOImpl implements ICustomerInfoDAO {

    public int getPageCount(int pageSize) {
        int rowCount = 0;
        int pageCount = 0;
        String sql = "select count(*) from customerInfo";
        DBManager dbManager = new DBManager();
        ResultSet rs = dbManager.query(sql);
        try {
            if (rs.next()) {
                rowCount = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dbManager.close();
        }
        pageCount = rowCount / pageSize;
        if (rowCount % pageSize != 0) {
            pageCount++;
        }
        return pageCount;
    }

    public List<CustomerInfo> getNowPage(int nowPage, int pageSize) {
        List<CustomerInfo> infos = new Vector<CustomerInfo>();
        String sql = "select * from customerInfo limit " + ((nowPage - 1) * pageSize) + ", " + pageSize;
        DBManager dbManager = new DBManager();
        CustomerInfo info = null;
        ResultSet rs = dbManager.query(sql);
        try {
            while (rs.next()) {
                info = new CustomerInfo();
                info.setCustId(rs.getInt(1));
                info.setCustName(rs.getString(2));
                info.setPwd(rs.getString(3));
                info.setEmail(rs.getString(4));
                infos.add(info);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dbManager.close();
        }
        return infos;
    }

    public boolean save(CustomerInfo customerInfo) {
        String sql = "insert into customerInfo(custName,pwd,email) " +
                "values ('" + customerInfo.getCustName() + "','" + customerInfo.getPwd() + "','" + customerInfo.getEmail() + "')";
        DBManager dbManager = new DBManager();
        return (dbManager.update(sql) == 1);
    }

    public boolean update(CustomerInfo customerInfo) {
        String sql = "update customerInfo set " +
                "custName='" + customerInfo.getCustName() + "'," +
                "pwd='" + customerInfo.getPwd() + "'," +
                "email='" + customerInfo.getEmail() + "' " +
                "where custId = " + customerInfo.getCustId() + "";
        DBManager dbManager = new DBManager();
        return (dbManager.update(sql) == 1);
    }

    public boolean delete(int id) {
        String sql = "delete from customerInfo where custId = " + id + "";
        DBManager dbManager = new DBManager();
        return (dbManager.update(sql) == 1);
    }

    public CustomerInfo findById(int id) {
        String sql = "select custId,custName,pwd,email from customerInfo where custId = " + id + "";
        DBManager dbManager = new DBManager();
        ResultSet rs = dbManager.query(sql);
        CustomerInfo info = new CustomerInfo();
        try {
            if (rs.next()) {
                info.setCustId(rs.getInt(1));
                info.setCustName(rs.getString(2));
                info.setPwd(rs.getString(3));
                info.setEmail(rs.getString(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dbManager.close();
        }
        return info;
    }

    public List<CustomerInfo> findAll() {
        List<CustomerInfo> infos = new Vector<CustomerInfo>();
        String sql = "select custId,custName,pwd,email from customerInfo ";
        DBManager dbManager = new DBManager();
        CustomerInfo info = null;
        ResultSet rs = dbManager.query(sql);
        try {
            while (rs.next()) {
                info = new CustomerInfo();
                info.setCustId(rs.getInt(1));
                info.setCustName(rs.getString(2));
                info.setPwd(rs.getString(3));
                info.setEmail(rs.getString(4));
                infos.add(info);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dbManager.close();
        }
        return infos;
    }

    /**
     * 判断用户名密码是否正确,如果正确返回该用户的详细信息,如果错误返回null
     */
    public CustomerInfo findByNameAndPwd(String name, String pwd) {
        CustomerInfo customerInfo = null;
        DBManager dbManager = new DBManager();
        String sql =
                "select custId,custName,pwd,email " +
                        "from customerInfo " +
                        "where " +
                        "	custName = '" + name + "' " +
                        "	and pwd = '" + pwd + "'";
        ResultSet rs = dbManager.query(sql);
        System.out.println(rs);
        try {
            while (rs.next()) {
                customerInfo = new CustomerInfo(rs.getInt("custId"),
                        rs.getString("custName"),
                        rs.getString("pwd"),
                        rs.getString("email"));
            }
        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            dbManager.close();
        }
        return customerInfo;
    }

    /**
     * 将新用户信息保存到数据库中
     * 如果保存成功，返回该用户的详细信息，否则返回null
     */
    @Override
    public String saveNewCustomer(String name, String pwd, String email) {
        CustomerInfo customerInfo = null;
        DBManager dbManager = new DBManager();

        // 查询是否已存在相同的用户名和邮箱
        String selectSql =
                "select * from customerInfo where custName = ? or email = ?";
        PreparedStatement pstmt = dbManager.prepare(selectSql);
        try {
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) { // 查询结果不为空，说明存在重复的用户名或邮箱
                return "用户名或邮箱已经被注册，请重新输入！";
            } else { // 查询结果为空，可以进行插入操作
                String insertSql = "insert into customerInfo (custName, pwd, email) values (?, ?, ?)";
                pstmt = dbManager.prepare(insertSql);
                pstmt.setString(1, name);
                pstmt.setString(2, pwd);
                pstmt.setString(3, email);
                int rows = pstmt.executeUpdate();
                System.out.println(rows);
                if (rows > 0) { // 插入成功
                    return "OK";
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dbManager.close();
        }
        return "OK";
    }

}
