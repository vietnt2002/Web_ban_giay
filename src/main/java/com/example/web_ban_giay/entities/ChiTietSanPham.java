package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
public class ChiTietSanPham {
    private String id;
    private String moTa;
    private Integer soLuong;
    private BigDecimal giaNhap;
    private BigDecimal giaBan;
    private LocalDateTime ngayTao;
    private Integer trangThai;
    private MauSac idMauSac;
    private KichThuoc idKichThuoc;
    private SanPham idSanPham;

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
    @Column(name = "MoTa")
    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
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
    @Column(name = "GiaNhap")
    public BigDecimal getGiaNhap() {
        return giaNhap;
    }

    public void setGiaNhap(BigDecimal giaNhap) {
        this.giaNhap = giaNhap;
    }

    @Basic
    @Column(name = "GiaBan")
    public BigDecimal getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(BigDecimal giaBan) {
        this.giaBan = giaBan;
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
        ChiTietSanPham that = (ChiTietSanPham) o;
        return Objects.equals(id, that.id) && Objects.equals(moTa, that.moTa) && Objects.equals(soLuong, that.soLuong) && Objects.equals(giaNhap, that.giaNhap) && Objects.equals(giaBan, that.giaBan) && Objects.equals(ngayTao, that.ngayTao) && Objects.equals(trangThai, that.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, moTa, soLuong, giaNhap, giaBan, ngayTao, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "IdMauSac", referencedColumnName = "ID")
    public MauSac getIdMauSac() {
        return idMauSac;
    }

    public void setIdMauSac(MauSac mauSacByIdMauSac) {
        this.idMauSac = mauSacByIdMauSac;
    }

    @ManyToOne
    @JoinColumn(name = "IdKichThuoc", referencedColumnName = "ID")
    public KichThuoc getIdKichThuoc() {
        return idKichThuoc;
    }

    public void setIdKichThuoc(KichThuoc kichThuocByIdKichThuoc) {
        this.idKichThuoc = kichThuocByIdKichThuoc;
    }

    @ManyToOne
    @JoinColumn(name = "IdSanPham", referencedColumnName = "ID")
    public SanPham getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(SanPham sanPhamByIdSanPham) {
        this.idSanPham = sanPhamByIdSanPham;
    }
}
