package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NhanVienRepository extends JpaRepository<NhanVien, String> {
    public static final int DANG_LAM_VIEC = 1;
    public static final int DA_NGHI_VIEC = 0;
}
