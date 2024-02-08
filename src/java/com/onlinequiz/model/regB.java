/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.onlinequiz.model;

/**
 *
 * @author User
 */
public class regB {
    private int uid;
    private String uname;
    private String pwd;
    private String hq;
    private String em;
    private int role;

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
    

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getUid() {
        return uid;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setHq(String hq) {
        this.hq = hq;
    }

    public void setEm(String em) {
        this.em = em;
    }

    public String getUname() {
        return uname;
    }

    public String getPwd() {
        return pwd;
    }

    public String getHq() {
        return hq;
    }

    public String getEm() {
        return em;
    }
    
}
