package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.ChiTietHoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChiTietHoaDonRepository extends JpaRepository<ChiTietHoaDon, String> {
    public static final int DA_THANH_TOAN = 1;
    public static final int CHUA_THANH_TOAN = 0;

}
