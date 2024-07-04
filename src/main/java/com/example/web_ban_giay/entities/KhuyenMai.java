package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Objects;

@Entity
public class KhuyenMai {
    private String id;
    private String ma;
    private String ten;
    private Date ngayBatDau;
    private Date ngayKetThuc;
    private BigDecimal soTienGiam;
    private Integer soLuong;
    private Integer trangThai;

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
    @Column(name = "Ma")
    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    @Basic
    @Column(name = "Ten")
    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    @Basic
    @Temporal(TemporalType.DATE)
    @Column(name = "NgayBatDau")
    public Date getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    @Basic
    @Temporal(TemporalType.DATE)
    @Column(name = "NgayKetThuc")
    public Date getNgayKetThuc() {
        return ngayKetThuc;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

    @Basic
    @Column(name = "SoTienGiam")
    public BigDecimal getSoTienGiam() {
        return soTienGiam;
    }

    public void setSoTienGiam(BigDecimal soTienGiam) {
        this.soTienGiam = soTienGiam;
    }

    @Basic
    @Column(name = "SoLuong")
    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    @Basic
    @Column(name = "TrangThai")
    public Integer getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Integer trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        KhuyenMai khuyenMai = (KhuyenMai) o;
        return Objects.equals(id, khuyenMai.id) && Objects.equals(ma, khuyenMai.ma) && Objects.equals(ten, khuyenMai.ten) && Objects.equals(ngayBatDau, khuyenMai.ngayBatDau) && Objects.equals(ngayKetThuc, khuyenMai.ngayKetThuc) && Objects.equals(soTienGiam, khuyenMai.soTienGiam) && Objects.equals(soLuong, khuyenMai.soLuong) && Objects.equals(trangThai, khuyenMai.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ma, ten, ngayBatDau, ngayKetThuc, soTienGiam, soLuong, trangThai);
    }
}
