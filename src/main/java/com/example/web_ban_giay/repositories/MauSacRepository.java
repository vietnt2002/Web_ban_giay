package com.example.web_ban_giay.repositories;

import com.example.web_ban_giay.entities.KichThuoc;
import com.example.web_ban_giay.entities.MauSac;
import com.example.web_ban_giay.response.MauSacResponse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MauSacRepository extends JpaRepository<MauSac, String> {
    public static final int HOAT_DONG = 1;
    public static final int NGUNG_HOAT_DONG = 0;

    @Query("select distinct new com.example.web_ban_giay.response.MauSacResponse (ms.id, ms.ma, ms.ten) " +
            "from MauSac ms " +
            "join ChiTietSanPham ctsp on ms.id = ctsp.idMauSac.id " +
            "where ctsp.idSanPham.id = ?1 " +
            "order by ms.ma asc ")
    List<MauSacResponse> getMauSacByIdSP(String idSP);
}
