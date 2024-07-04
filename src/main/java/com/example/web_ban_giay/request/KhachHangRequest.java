package com.example.web_ban_giay.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Date;
import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class KhachHangRequest {
    private String hoTen;
    private Integer gioiTinh;
    private Date ngaySinh;
    private String sdt;
    private MultipartFile anhDaiDien;
    private String taiKhoan;
    private String matKhau;
    private LocalDateTime ngayTao;
    private LocalDateTime ngaySua;
    private Integer trangThai;
    private String email;
}
