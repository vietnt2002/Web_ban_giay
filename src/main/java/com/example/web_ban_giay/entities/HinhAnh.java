package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
public class HinhAnh {
    private String id;
    private String hinhAnh1;
    private String hinhAnh2;
    private String hinhAnh3;
    private String hinhAnh4;
    private ChiTietSanPham idCTSP;

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "ID")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "HinhAnh1")
    public String getHinhAnh1() {
        return hinhAnh1;
    }

    public void setHinhAnh1(String hinhAnh1) {
        this.hinhAnh1 = hinhAnh1;
    }

    @Basic
    @Column(name = "HinhAnh2")
    public String getHinhAnh2() {
        return hinhAnh2;
    }

    public void setHinhAnh2(String hinhAnh2) {
        this.hinhAnh2 = hinhAnh2;
    }

    @Basic
    @Column(name = "HinhAnh3")
    public String getHinhAnh3() {
        return hinhAnh3;
    }

    public void setHinhAnh3(String hinhAnh3) {
        this.hinhAnh3 = hinhAnh3;
    }

    @Basic
    @Column(name = "HinhAnh4")
    public String getHinhAnh4() {
        return hinhAnh4;
    }

    public void setHinhAnh4(String hinhAnh4) {
        this.hinhAnh4 = hinhAnh4;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HinhAnh hinhAnh = (HinhAnh) o;
        return Objects.equals(id, hinhAnh.id) && Objects.equals(hinhAnh1, hinhAnh.hinhAnh1) && Objects.equals(hinhAnh2, hinhAnh.hinhAnh2) && Objects.equals(hinhAnh3, hinhAnh.hinhAnh3) && Objects.equals(hinhAnh4, hinhAnh.hinhAnh4);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, hinhAnh1, hinhAnh2, hinhAnh3, hinhAnh4);
    }

    @ManyToOne
    @JoinColumn(name = "IdCTSP", referencedColumnName = "ID")
    public ChiTietSanPham getIdCTSP() {
        return idCTSP;
    }

    public void setIdCTSP(ChiTietSanPham chiTietSanPhamByIdCtsp) {
        this.idCTSP = chiTietSanPhamByIdCtsp;
    }
}
