/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Ghazi
 */
public class Customer {
    
    private Integer id;
    private String nama;
    private String alamat;
    private String tipe_id;
    private String no_id;
    private String no_hp;
    private String umur;

    public Customer(Integer id, String nama, String alamat, String tipe_id, String no_id, String no_hp, String umur) {
        this.id = id;
        this.nama = nama;
        this.alamat = alamat;
        this.tipe_id = tipe_id;
        this.no_id = no_id;
        this.no_hp = no_hp;
        this.umur = umur;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getTipe_id() {
        return tipe_id;
    }

    public void setTipe_id(String tipe_id) {
        this.tipe_id = tipe_id;
    }

    public String getNo_id() {
        return no_id;
    }

    public void setNo_id(String no_id) {
        this.no_id = no_id;
    }

    public String getNo_hp() {
        return no_hp;
    }

    public void setNo_hp(String no_hp) {
        this.no_hp = no_hp;
    }

    public String getUmur() {
        return umur;
    }

    public void setUmur(String umur) {
        this.umur = umur;
    }
    
    
    
    
}
