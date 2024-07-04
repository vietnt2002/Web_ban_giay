package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
public class DiaChi {
    private String id;
    private String tenKhachHang;
    private String sdtKhachHang;
    private String diaChiChiTiet;
    private String phuongXa;
    private String quanHuyen;
    private String tinhThanh;
    private Integer trangThai;
    private KhachHang idKhachHang;

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
    @Column(name = "TenKhachHang")
    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    @Basic
    @Column(name = "SdtKhachHang")
    public String getSdtKhachHang() {
        return sdtKhachHang;
    }

    public void setSdtKhachHang(String sdtKhachHang) {
        this.sdtKhachHang = sdtKhachHang;
    }

    @Basic
    @Column(name = "DiaChiChiTiet")
    public String getDiaChiChiTiet() {
        return diaChiChiTiet;
    }

    public void setDiaChiChiTiet(String diaChiChiTiet) {
        this.diaChiChiTiet = diaChiChiTiet;
    }

    @Basic
    @Column(name = "PhuongXa")
    public String getPhuongXa() {
        return phuongXa;
    }

    public void setPhuongXa(String phuongXa) {
        this.phuongXa = phuongXa;
    }

    @Basic
    @Column(name = "QuanHuyen")
    public String getQuanHuyen() {
        return quanHuyen;
    }

    public void setQuanHuyen(String quanHuyen) {
        this.quanHuyen = quanHuyen;
    }

    @Basic
    @Column(name = "TinhThanh")
    public String getTinhThanh() {
        return tinhThanh;
    }

    public void setTinhThanh(String tinhThanh) {
        this.tinhThanh = tinhThanh;
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
        DiaChi diaChi = (DiaChi) o;
        return Objects.equals(id, diaChi.id) && Objects.equals(tenKhachHang, diaChi.tenKhachHang) && Objects.equals(sdtKhachHang, diaChi.sdtKhachHang) && Objects.equals(diaChiChiTiet, diaChi.diaChiChiTiet) && Objects.equals(phuongXa, diaChi.phuongXa) && Objects.equals(quanHuyen, diaChi.quanHuyen) && Objects.equals(tinhThanh, diaChi.tinhThanh) && Objects.equals(trangThai, diaChi.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, tenKhachHang, sdtKhachHang, diaChiChiTiet, phuongXa, quanHuyen, tinhThanh, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "IdKH", referencedColumnName = "ID")
    public KhachHang getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(KhachHang khachHangByIdKh) {
        this.idKhachHang = khachHangByIdKh;
    }
}
