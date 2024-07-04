package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, String> {
    public static final int CHO_THANH_TOAN = 1;
    public static final int DA_THANH_TOAN = 2;
    public static final int CHO_XAC_NHAN = 3;
    public static final int DA_XAC_NHAN = 4;
    public static final int CHO_GIAO_HANG = 5;
    public static final int DANG_GIAO_HANG = 6;
    public static final int GIAO_HANG_THANH_CONG = 7;
    public static final int HUY_DON_HANG = 0;
}
