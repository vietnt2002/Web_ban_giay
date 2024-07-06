package com.example.web_ban_giay.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MauSizeResponse {
    private String tenMS;
    private String tenKT;
    private Integer soLuong;
    private String hinhAnh1;
    private String hinhAnh2;
    private String hinhAnh3;
    private String hinhAnh4;
}
