package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.time.LocalDateTime;
import java.util.Objects;

@Entity
public class HoaDon {
    private String id;
    private String ma;
    private LocalDateTime ngayTao;
    private LocalDateTime ngayThanhToan;
    private Integer phuongThucThanhToan;
    private Integer loaiHoaDon;
    private Integer tongTien;
    private Integer trangThai;
    private KhuyenMai idKhuyenMai;
    private NhanVien idNhanVien;
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
    @Column(name = "Ma")
    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
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
    @Column(name = "NgayThanhToan")
    public LocalDateTime getNgayThanhToan() {
        return ngayThanhToan;
    }

    public void setNgayThanhToan(LocalDateTime ngayThanhToan) {
        this.ngayThanhToan = ngayThanhToan;
    }

    @Basic
    @Column(name = "PhuongThucThanhToan")
    public Integer getPhuongThucThanhToan() {
        return phuongThucThanhToan;
    }

    public void setPhuongThucThanhToan(Integer phuongThucThanhToan) {
        this.phuongThucThanhToan = phuongThucThanhToan;
    }

    @Basic
    @Column(name = "LoaiHoaDon")
    public Integer getLoaiHoaDon() {
        return loaiHoaDon;
    }

    public void setLoaiHoaDon(Integer loaiHoaDon) {
        this.loaiHoaDon = loaiHoaDon;
    }

    @Basic
    @Column(name = "TongTien")
    public Integer getTongTien() {
        return tongTien;
    }

    public void setTongTien(Integer tongTien) {
        this.tongTien = tongTien;
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
        HoaDon hoaDon = (HoaDon) o;
        return Objects.equals(id, hoaDon.id) && Objects.equals(ma, hoaDon.ma) && Objects.equals(ngayTao, hoaDon.ngayTao) && Objects.equals(ngayThanhToan, hoaDon.ngayThanhToan) && Objects.equals(phuongThucThanhToan, hoaDon.phuongThucThanhToan) && Objects.equals(loaiHoaDon, hoaDon.loaiHoaDon) && Objects.equals(tongTien, hoaDon.tongTien) && Objects.equals(trangThai, hoaDon.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ma, ngayTao, ngayThanhToan, phuongThucThanhToan, loaiHoaDon, tongTien, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "IdKhuyenMai", referencedColumnName = "ID")
    public KhuyenMai getIdKhuyenMai() {
        return idKhuyenMai;
    }

    public void setIdKhuyenMai(KhuyenMai khuyenMaiByIdKhuyenMai) {
        this.idKhuyenMai = khuyenMaiByIdKhuyenMai;
    }

    @ManyToOne
    @JoinColumn(name = "IdNhanVien", referencedColumnName = "ID")
    public NhanVien getIdNhanVien() {
        return idNhanVien;
    }

    public void setIdNhanVien(NhanVien nhanVienByIdNhanVien) {
        this.idNhanVien = nhanVienByIdNhanVien;
    }

    @ManyToOne
    @JoinColumn(name = "IdKhachHang", referencedColumnName = "ID")
    public KhachHang getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(KhachHang khachHangByIdKhachHang) {
        this.idKhachHang = khachHangByIdKhachHang;
    }
}
