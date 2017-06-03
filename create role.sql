-- LOGIN AS QLDE, chạy các lệnh bên dưới để tạo role--
CREATE ROLE R_NV;
CREATE ROLE R_GIAMDOC;
create role R_NV_PHONG_NHANSU;
create role R_NV_PHONG_KEHOACH;
create role R_NV_PHONG_KINHDOANH;
create role R_NV_PHONG_DEAN;
create role R_TRUONG_PHONG;
create role R_TRUONG_PHONG_DEAN;

-- ROLE NHÂN VIÊN
GRANT SELECT ON QLDA.NHANVIEN TO R_NV;
GRANT UPDATE(HOTEN,PHAI,NGAYSINH,DIENTHOAI) on QLDA.NHANVIEN TO R_NV;

GRANT SELECT ON QLDA.THAMGIADEAN TO R_NV;
-- ROLE PHÒNG NHÂN SỰ
GRANT select on QLDA.NHANVIEN TO R_NV_PHONG_NHANSU;
GRANT update(LUONG,PHUCAP,MAPHONG) on QLDA.NHANVIEN TO R_NV_PHONG_NHANSU;

GRANT SELECT ON QLDA.THAMGIADEAN TO R_NV_PHONG_NHANSU;

-- ROLE NHÂN VIÊN PHÒNG ĐỀ ÁN
GRANT SELECT,UPDATE, INSERT, DELETE ON QLDA.THAMGIADEAN TO R_NV_PHONG_DEAN;
GRANT SELECT ON QLDA.DEAN TO R_NV_PHONG_DEAN;

-- ROLE NHÂN VIÊN PHÒNG KINH DOANH
GRANT SELECT ON QLDA.THAMGIADEAN TO R_NV_PHONG_KINHDOANH;
GRANT SELECT ON QLDA.DEAN TO R_NV_PHONG_KINHDOANH;

-- ROLE NHÂN VIÊN PHÒNG KẾ HOẠCH
GRANT SELECT,UPDATE, INSERT, DELETE ON QLDA.DEAN TO R_NV_PHONG_KEHOACH;


-- ROLE TRƯỞNG PHÒNG
GRANT SELECT ON QLDA.NHANVIEN TO R_TRUONG_PHONG;
GRANT SELECT ON QLDA.THAMGIADEAN TO R_TRUONG_PHONG;
GRANT SELECT ON QLDA.DEAN TO R_TRUONG_PHONG;
-- ROLE TRƯỞNG PHÒNG ĐỀ ÁN
GRANT SELECT ON QLDA.THAMGIADEAN TO R_TRUONG_PHONG_DEAN;
GRANT UPDATE(THOIGIAN,TRANGTHAI) ON QLDA.THAMGIADEAN TO R_TRUONG_PHONG_DEAN;

-- ROLE GIÁM ĐỐC
GRANT select on QLDA.NHANVIEN TO R_GIAMDOC;
GRANT update(LUONG,PHUCAP,MAPHONG) on QLDA.NHANVIEN TO R_GIAMDOC;
GRANT SELECT ON QLDA.THAMGIADEAN TO R_GIAMDOC;
GRANT SELECT ON QLDA.DEAN TO R_GIAMDOC;