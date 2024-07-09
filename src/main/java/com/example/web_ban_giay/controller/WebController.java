package com.example.web_ban_giay.controller;

import com.example.web_ban_giay.config.UserInfor;
import com.example.web_ban_giay.repositories.*;
import com.example.web_ban_giay.response.KichThuocResponse;
import com.example.web_ban_giay.response.MauSacResponse;
import com.example.web_ban_giay.response.MauSizeResponse;
import com.example.web_ban_giay.response.SanPhamResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("store-customer")
public class WebController {
    @Autowired
    ChiTietSanPhamRepository chiTietSanPhamRepo;
    @Autowired
    SanPhamRepository sanPhamRepo;
    @Autowired
    KichThuocRepository kichThuocRepo;
    @Autowired
    MauSacRepository mauSacRepo;
    @Autowired
    KhachHangRepository khachHangRepo;

    @GetMapping("trang-chu")
    public String getTrangChu(
            Model model
    ){
        List<SanPhamResponse> listSanPhamTrangChu = chiTietSanPhamRepo.getAllTrangChu();
        model.addAttribute("listSanPham", listSanPhamTrangChu);
        return "/view/view_web/trangChu.jsp";
    }

    @GetMapping("dang-nhap-view")
    public String getDangNhapView(){
        return "/view/view_web/dangNhap.jsp";
    }

    @GetMapping("dang-ky-view")
    public String getDangKyView(){
        return "/view/view_web/dangKy.jsp";
    }

    @GetMapping("chi-tiet-san-pham/{idSP}")
    public String chiTietSanPham(
            @PathVariable("idSP") String idSP,
            Model model
    ){
        //Lấy ra chi tiết sản phẩm
        SanPhamResponse chiTietSanPham = chiTietSanPhamRepo.findByIdSP(idSP);
        model.addAttribute("chiTietSanPham", chiTietSanPham);
        System.out.println("--------------------------------tên màu sắc: "+chiTietSanPham.getTenMS());

        //Lấy danh sách kích thước theo idSP
        List<KichThuocResponse> listKichThuoc = kichThuocRepo.getKichThuocByIdSP(idSP);
        model.addAttribute("listKichThuoc", listKichThuoc);

        //Lấy danh sách màu sắc theo idSP
        List<MauSacResponse> listMauSac = mauSacRepo.getMauSacByIdSP(idSP);
        model.addAttribute("listMauSac", listMauSac);

        //Lấy danh sách màu sắc, kích thước, số lượng và hình ảnh
        List<MauSizeResponse> listMauSize = chiTietSanPhamRepo.getMauSizeSL(idSP);
        model.addAttribute("listMauSize", listMauSize);

        return "/view/view_web/chiTietSanPham.jsp";
    }

    @PostMapping("them-gio-hang")
    public String themGioHang(
            Model model
    ){
        //Nếu khách hàng chưa đăng nhập thì lưu vào localStorage
        if (UserInfor.ID_KHACH_HANG == null){

        }else {  //Nếu khách hàng có đăng nhập thì lưu vào bảng giỏ hàng

        }
        return "redirect:/store-customer/chi-tiet-san-pham/";
    }

}
