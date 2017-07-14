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
public class Rental {
    
    private Integer id;
    private Integer idKendaraan;
    private Integer idCustomer;
    private String kendaraan;
    private String customer;
    private String tanggalSewa;
    private Integer totalHariSewa;
    private String statusSewa;
    private Integer totalHarga;

    public Rental(Integer id, Integer idKendaraan, Integer idCustomer, String kendaraan, String customer, String tanggalSewa, Integer totalHariSewa, String statusSewa, Integer totalHarga) {
        this.id = id;
        this.idKendaraan = idKendaraan;
        this.idCustomer = idCustomer;
        this.kendaraan = kendaraan;
        this.customer = customer;
        this.tanggalSewa = tanggalSewa;
        this.totalHariSewa = totalHariSewa;
        this.statusSewa = statusSewa;
        this.totalHarga = totalHarga;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdKendaraan() {
        return idKendaraan;
    }

    public void setIdKendaraan(Integer idKendaraan) {
        this.idKendaraan = idKendaraan;
    }

    public Integer getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(Integer idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getKendaraan() {
        return kendaraan;
    }

    public void setKendaraan(String kendaraan) {
        this.kendaraan = kendaraan;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getTanggalSewa() {
        return tanggalSewa;
    }

    public void setTanggalSewa(String tanggalSewa) {
        this.tanggalSewa = tanggalSewa;
    }

    public Integer getTotalHariSewa() {
        return totalHariSewa;
    }

    public void setTotalHariSewa(Integer totalHariSewa) {
        this.totalHariSewa = totalHariSewa;
    }

    public String getStatusSewa() {
        return statusSewa;
    }

    public void setStatusSewa(String statusSewa) {
        this.statusSewa = statusSewa;
    }

    public Integer getTotalHarga() {
        return totalHarga;
    }

    public void setTotalHarga(Integer totalHarga) {
        this.totalHarga = totalHarga;
    }
    
    
    
    
}
