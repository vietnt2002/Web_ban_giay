package com.example.web_ban_giay.entities;

import jakarta.persistence.*;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
public class NhanVien {
    private String id;
    private String hoTen;
    private Integer gioiTinh;
    private Date ngaySinh;
    private String sdt;
    private String anhDaiDien;
    private String taiKhoan;
    private String matKhau;
    private LocalDateTime ngayTao;
    private LocalDateTime ngaySua;
    private Integer trangThai;
    private ChucVu idChucVu;

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
    @Column(name = "HoTen")
    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    @Basic
    @Column(name = "GioiTinh")
    public Integer getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(Integer gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    @Basic
    @Temporal(TemporalType.DATE)
    @Column(name = "NgaySinh")
    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    @Basic
    @Column(name = "Sdt")
    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    @Basic
    @Column(name = "AnhDaiDien")
    public String getAnhDaiDien() {
        return anhDaiDien;
    }

    public void setAnhDaiDien(String anhDaiDien) {
        this.anhDaiDien = anhDaiDien;
    }

    @Basic
    @Column(name = "TaiKhoan")
    public String getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    @Basic
    @Column(name = "MatKhau")
    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
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
    @Column(name = "NgaySua")
    public LocalDateTime getNgaySua() {
        return ngaySua;
    }

    public void setNgaySua(LocalDateTime ngaySua) {
        this.ngaySua = ngaySua;
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
        NhanVien nhanVien = (NhanVien) o;
        return Objects.equals(id, nhanVien.id) && Objects.equals(hoTen, nhanVien.hoTen) && Objects.equals(gioiTinh, nhanVien.gioiTinh) && Objects.equals(ngaySinh, nhanVien.ngaySinh) && Objects.equals(sdt, nhanVien.sdt) && Objects.equals(anhDaiDien, nhanVien.anhDaiDien) && Objects.equals(taiKhoan, nhanVien.taiKhoan) && Objects.equals(matKhau, nhanVien.matKhau) && Objects.equals(ngayTao, nhanVien.ngayTao) && Objects.equals(ngaySua, nhanVien.ngaySua) && Objects.equals(trangThai, nhanVien.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, hoTen, gioiTinh, ngaySinh, sdt, anhDaiDien, taiKhoan, matKhau, ngayTao, ngaySua, trangThai);
    }

    @ManyToOne
    @JoinColumn(name = "IdChucVu", referencedColumnName = "ID")
    public ChucVu getIdChucVu() {
        return idChucVu;
    }

    public void setIdChucVu(ChucVu chucVuByIdChucVu) {
        this.idChucVu = chucVuByIdChucVu;
    }
}
