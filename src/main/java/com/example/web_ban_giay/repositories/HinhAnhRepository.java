package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.HinhAnh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HinhAnhRepository extends JpaRepository<HinhAnh, String> {
}
