package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
public class MauSac {
    private String id;
    private String ma;
    private String ten;
    private LocalDateTime ngayTao;
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
    @Column(name = "NgayTao")
    public LocalDateTime getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(LocalDateTime ngayTao) {
        this.ngayTao = ngayTao;
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
        MauSac mauSac = (MauSac) o;
        return Objects.equals(id, mauSac.id) && Objects.equals(ma, mauSac.ma) && Objects.equals(ten, mauSac.ten) && Objects.equals(ngayTao, mauSac.ngayTao) && Objects.equals(trangThai, mauSac.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ma, ten, ngayTao, trangThai);
    }
}
