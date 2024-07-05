package com.example.web_ban_giay.controller;

import com.example.web_ban_giay.repositories.*;
import com.example.web_ban_giay.response.KichThuocResponse;
import com.example.web_ban_giay.response.MauSacResponse;
import com.example.web_ban_giay.response.SanPhamResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
        SanPhamResponse chiTietSanPham = chiTietSanPhamRepo.findByIdSP(idSP);
        List<KichThuocResponse> listKichThuoc = kichThuocRepo.getKichThuocByIdSP(idSP);
        List<MauSacResponse> listMauSac = mauSacRepo.getMauSacByIdSP(idSP);
        model.addAttribute("chiTietSanPham", chiTietSanPham);
        model.addAttribute("listKichThuoc", listKichThuoc);
        model.addAttribute("listMauSac", listMauSac);
        return "/view/view_web/chiTietSanPham.jsp";
    }
}
