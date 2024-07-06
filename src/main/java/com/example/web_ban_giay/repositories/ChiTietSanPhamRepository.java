package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.ChiTietSanPham;
import com.example.web_ban_giay.response.MauSizeResponse;
import com.example.web_ban_giay.response.SanPhamResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChiTietSanPhamRepository extends JpaRepository<ChiTietSanPham, String> {
    public static final int CON_HANG = 1;
    public static final int HET_HANG = 0;

    //Hiển thị danh sách sản phẩm trang chủ
    @Query("select new com.example.web_ban_giay.response.SanPhamResponse(sp.id, sp.ma, sp.ten, ctsp.moTa, max (ha.hinhAnh1), max (ha.hinhAnh2), max (ha.hinhAnh3), max (ha.hinhAnh4), min(ctsp.soLuong), min(ctsp.giaBan)) " +
            "from ChiTietSanPham ctsp " +
            "join SanPham sp on sp.id = ctsp.idSanPham.id " +
            "join HinhAnh ha on ha.idCTSP.id = ctsp.id " +
            "group by sp.id, sp.ma, sp.ten, ctsp.moTa, sp.ngayTao " +
            "order by sp.ngayTao desc ")
    List<SanPhamResponse> getAllTrangChu();

    //Hiển thị chi tiết sản phẩm theo idSP
    @Query("select new com.example.web_ban_giay.response.SanPhamResponse(sp.id, sp.ma, sp.ten, ctsp.moTa, max (ha.hinhAnh1), max (ha.hinhAnh2), max (ha.hinhAnh3), max (ha.hinhAnh4), min(ctsp.soLuong), min(ctsp.giaBan)) " +
            "from ChiTietSanPham ctsp " +
            "join SanPham sp on sp.id = ctsp.idSanPham.id " +
            "join HinhAnh ha on ha.idCTSP.id = ctsp.id " +
            "where sp.id = ?1 " +
            "group by sp.id, sp.ma, sp.ten, ctsp.moTa, sp.ngayTao")
    SanPhamResponse findByIdSP(String idSP);

    //Lấy ra danh sách màu sắc, kích thước, số lượng và hình ảnh theo idSP
    @Query("select distinct new com.example.web_ban_giay.response.MauSizeResponse(ms.ten, kt.ten, ctsp.soLuong, ha.hinhAnh1, ha.hinhAnh2, ha.hinhAnh3, ha.hinhAnh4) " +
            "from ChiTietSanPham ctsp " +
            "join KichThuoc kt on kt.id = ctsp.idKichThuoc.id " +
            "join MauSac ms on ms.id = ctsp.idMauSac.id " +
            "join SanPham sp on sp.id = ctsp.idSanPham.id " +
            "join HinhAnh ha on ha.idCTSP.id = ctsp.id " +
            "where sp.id = ?1 ")
    List<MauSizeResponse> getMauSizeSL(String idSP);
}
