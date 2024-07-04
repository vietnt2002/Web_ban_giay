package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.GiaoHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GiaoHangRepository extends JpaRepository<GiaoHang, String> {
    public static final int GIAO_HANG_THANH_CONG = 1;
    public static final int CHO_GIAO_HANG = 0;
}
