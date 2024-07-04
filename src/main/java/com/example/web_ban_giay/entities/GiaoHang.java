package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Objects;

@Entity
public class GiaoHang {
    private String id;
    private String tenNguoiNhan;
    private String sdtNguoiNhan;
    private String diaChiChiTiet;
    private String phuongXa;
    private String quanHuyen;
    private String tinhThanh;
    private Date ngayShip;
    private Date ngayNhan;
    private BigDecimal phiShip;
    private String ghiChu;
    private Integer trangThai;
    private HoaDon idHoaDon;

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
    @Column(name = "TenNguoiNhan")
    public String getTenNguoiNhan() {
        return tenNguoiNhan;
    }

    public void setTenNguoiNhan(String tenNguoiNhan) {
        this.tenNguoiNhan = tenNguoiNhan;
    }

    @Basic
    @Column(name = "SdtNguoiNhan")
    public String getSdtNguoiNhan() {
        return sdtNguoiNhan;
    }

    public void setSdtNguoiNhan(String sdtNguoiNhan) {
        this.sdtNguoiNhan = sdtNguoiNhan;
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
    @Temporal(TemporalType.DATE)
    @Column(name = "NgayShip")
    public Date getNgayShip() {
        return ngayShip;
    }

    public void setNgayShip(Date ngayShip) {
        this.ngayShip = ngayShip;
    }

    @Basic
    @Temporal(TemporalType.DATE)
    @Column(name = "NgayNhan")
    public Date getNgayNhan() {
        return ngayNhan;
    }

    public void setNgayNhan(Date ngayNhan) {
        this.ngayNhan = ngayNhan;
    }

    @Basic
    @Column(name = "PhiShip")
    public BigDecimal getPhiShip() {
        return phiShip;
    }

    public void setPhiShip(BigDecimal phiShip) {
        this.phiShip = phiShip;
    }

    @Basic
    @Column(name = "GhiChu")
    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
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
        GiaoHang giaoHang = (GiaoHang) o;
        return Objects.equals(id, giaoHang.id) && Objects.equals(tenNguoiNhan, giaoHang.tenNguoiNhan) && Objects.equals(sdtNguoiNhan, giaoHang.sdtNguoiNhan) && Objects.equals(diaChiChiTiet, giaoHang.diaChiChiTiet) && Objects.equals(phuongXa, giaoHang.phuongXa) && Objects.equals(quanHuyen, giaoHang.quanHuyen) && Objects.equals(tinhThanh, giaoHang.tinhThanh) && Objects.equals(ngayShip, giaoHang.ngayShip) && Objects.equals(ngayNhan, giaoHang.ngayNhan) && Objects.equals(phiShip, giaoHang.phiShip) && Objects.equals(ghiChu, giaoHang.ghiChu) && Objects.equals(trangThai, giaoHang.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, tenNguoiNhan, sdtNguoiNhan, diaChiChiTiet, phuongXa, quanHuyen, tinhThanh, ngayShip, ngayNhan, phiShip, ghiChu, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "IdHoaDon", referencedColumnName = "ID")
    public HoaDon getHoaDonByIdHoaDon() {
        return idHoaDon;
    }

    public void setHoaDonByIdHoaDon(HoaDon hoaDonByIdHoaDon) {
        this.idHoaDon = hoaDonByIdHoaDon;
    }
}
