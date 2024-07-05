package com.example.web_ban_giay.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SanPhamResponse {
    private String idSP;
    private String maSP;
    private String tenSP;
    private String moTa;
    private String hinhAnh1;
    private String hinhAnh2;
    private String hinhAnh3;
    private String hinhAnh4;
    private Integer soLuong;
    private BigDecimal giaBan;
}
