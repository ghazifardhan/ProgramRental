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
public class Kendaraan {
    
    private Integer id;
    private String merk;
    private String jenis;
    private Integer hargaPerHari;

    public Kendaraan(Integer id, String merk, String jenis, Integer hargaPerHari) {
        this.id = id;
        this.merk = merk;
        this.jenis = jenis;
        this.hargaPerHari = hargaPerHari;
    }
    
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMerk() {
        return merk;
    }

    public void setMerk(String merk) {
        this.merk = merk;
    }

    public String getJenis() {
        return jenis;
    }

    public void setJenis(String jenis) {
        this.jenis = jenis;
    }

    public Integer getHargaPerHari() {
        return hargaPerHari;
    }

    public void setHargaPerHari(Integer hargaPerHari) {
        this.hargaPerHari = hargaPerHari;
    }
    
    
}
