package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KhachHangRepository extends JpaRepository<KhachHang, String> {
    public static final int HOAT_DONG = 1;
    public static final int NGUNG_HOAT_DONG = 0;
}
