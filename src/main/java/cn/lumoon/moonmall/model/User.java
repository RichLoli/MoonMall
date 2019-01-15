package cn.lumoon.moonmall.model;

/**
 * pojo类 与数据库user表映射
 * @author loligafeo
 * @version 1.0.0 2019/1/14
 */
public class User {
    /**
     * 用户id
     */
    private int id;
    private String username;
    private String password;
    private String phone;

    public User() {
    }

    public User(int id, String username, String password, String phone) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
