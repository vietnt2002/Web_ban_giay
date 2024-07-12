package com.example.web_ban_giay.controller;

import com.example.web_ban_giay.config.UserInfor;
import com.example.web_ban_giay.entities.KhachHang;
import com.example.web_ban_giay.repositories.*;
import com.example.web_ban_giay.request.KhachHangRequest;
import com.example.web_ban_giay.response.KichThuocResponse;
import com.example.web_ban_giay.response.MauSacResponse;
import com.example.web_ban_giay.response.MauSizeResponse;
import com.example.web_ban_giay.response.SanPhamResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDateTime;
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
            Model model,
            HttpSession session
    ){
        //Hiển thị thông tin khách hàng đăng nhập
        if (UserInfor.ID_KHACH_HANG != null){
            KhachHang khachHang = khachHangRepo.findById(UserInfor.ID_KHACH_HANG).get();
            session.setAttribute("khachHang", khachHang);
            model.addAttribute("khachHang", khachHang);
        }else {
            KhachHang khachHang = null;
            session.setAttribute("khachHang", khachHang);
        }

        List<SanPhamResponse> listSanPhamTrangChu = chiTietSanPhamRepo.getAllTrangChu();
        model.addAttribute("listSanPham", listSanPhamTrangChu);
        return "/view/view_web/trangChu.jsp";
    }

    @GetMapping("dang-nhap-view")
    public String getDangNhapView(Model model){
        model.addAttribute("ListKhachHang", khachHangRepo.findAll());
        return "/view/view_web/dangNhap.jsp";
    }

    @PostMapping("dang-nhap")
    public String dangNhap(
            @RequestParam("taiKhoan") String taiKhoan,
            RedirectAttributes redirectAttributes
    ){
        KhachHang khachHang = khachHangRepo.findByTaiKhoan(taiKhoan);
        UserInfor.ID_KHACH_HANG = khachHang.getId();
        redirectAttributes.addFlashAttribute("success", "Đăng nhập thành công");
        return "redirect:/store-customer/trang-chu";
    }

    @GetMapping("dang-xuat")
    public String dangXuat(){
        UserInfor.ID_KHACH_HANG = null;
        return "redirect:/store-customer/trang-chu";
    }

    @GetMapping("dang-ky-view")
    public String getDangKyView(Model model){
        KhachHangRequest khachHang = new KhachHangRequest();
        model.addAttribute("khachHang", khachHang);
        model.addAttribute("ListKhachHang", khachHangRepo.findAll());
        return "/view/view_web/dangKy.jsp";
    }

    @PostMapping("dang-ky")
    public String dangKy(
            @ModelAttribute("khachHang") KhachHangRequest khReq,
            RedirectAttributes redirectAttributes
    ){
        KhachHang khachHang = new KhachHang();
        khachHang.setHoTen(khReq.getHoTen());
        khachHang.setSdt(khReq.getSdt());
        khachHang.setEmail(khReq.getEmail());
        khachHang.setTaiKhoan(khReq.getTaiKhoan());
        khachHang.setMatKhau(khReq.getMatKhau());
        khachHang.setNgayTao(LocalDateTime.now());
        khachHang.setTrangThai(KhachHangRepository.HOAT_DONG);
        khachHangRepo.save(khachHang);

        redirectAttributes.addFlashAttribute("success", "Đăng ký tài khoản thành công.");
        return "redirect:/store-customer/dang-nhap-view";
    }

    @GetMapping("chi-tiet-san-pham/{idSP}")
    public String chiTietSanPham(
            @PathVariable("idSP") String idSP,
            Model model
    ){
        //Lấy ra chi tiết sản phẩm
        SanPhamResponse chiTietSanPham = chiTietSanPhamRepo.findByIdSP(idSP);
        model.addAttribute("chiTietSanPham", chiTietSanPham);

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
