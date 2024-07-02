package com.example.web_ban_giay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("store-customer")
public class WebController {

    @GetMapping("trang-chu")
    public String getTrangChu(){
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

    @GetMapping("chi-tiet-san-pham")
    public String chiTietSanPham(){
        return "/view/view_web/chiTietSanPham.jsp";
    }
}
