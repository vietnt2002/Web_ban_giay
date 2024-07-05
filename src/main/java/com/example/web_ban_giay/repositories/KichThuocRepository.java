package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.KichThuoc;
import com.example.web_ban_giay.response.KichThuocResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KichThuocRepository extends JpaRepository<KichThuoc, String> {
    public static final int HOAT_DONG = 1;
    public static final int NGUNG_HOAT_DONG = 0;

    @Query("select distinct new com.example.web_ban_giay.response.KichThuocResponse (kt.id, kt.ma, kt.ten) " +
            "from KichThuoc kt " +
            "join ChiTietSanPham ctsp on kt.id = ctsp.idKichThuoc.id " +
            "where ctsp.idSanPham.id = ?1 " +
            "order by kt.ten asc ")
    List<KichThuocResponse> getKichThuocByIdSP(String idSP);
}
