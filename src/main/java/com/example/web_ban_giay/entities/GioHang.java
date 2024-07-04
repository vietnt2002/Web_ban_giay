package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
public class GioHang {
    private String id;
    private Integer soLuong;
    private BigDecimal donGia;
    private LocalDateTime ngayTao;
    private Integer trangThai;
    private KhachHang idKhachHang;
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
    @Column(name = "SoLuong")
    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    @Basic
    @Column(name = "DonGia")
    public BigDecimal getDonGia() {
        return donGia;
    }

    public void setDonGia(BigDecimal donGia) {
        this.donGia = donGia;
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
        GioHang gioHang = (GioHang) o;
        return Objects.equals(id, gioHang.id) && Objects.equals(soLuong, gioHang.soLuong) && Objects.equals(donGia, gioHang.donGia) && Objects.equals(ngayTao, gioHang.ngayTao) && Objects.equals(trangThai, gioHang.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, soLuong, donGia, ngayTao, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "IdKhachHang", referencedColumnName = "ID")
    public KhachHang getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(KhachHang khachHangByIdKhachHang) {
        this.idKhachHang = khachHangByIdKhachHang;
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
