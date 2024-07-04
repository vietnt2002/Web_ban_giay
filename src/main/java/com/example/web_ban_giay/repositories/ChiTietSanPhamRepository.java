package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.ChiTietSanPham;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChiTietSanPhamRepository extends JpaRepository<ChiTietSanPham, String> {
    public static final int CON_HANG = 1;
    public static final int HET_HANG = 0;
}
