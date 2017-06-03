select * from QLDA.NHANVIEN;
select * from QLDA.PHONGBAN;
select * from QLDA.THAMGIADEAN;
select * from QLDA.DEAN;

-- lấy ds user trong QLDE (NV100 ->)
select username from DBA_users where username like 'NV%' ORDER BY username;
grant select on QLDA.Nhanvien to NV101;

-- hiển thị các role có trong CSDL do DLDE tạo ra
select * from Dba_roles where ROLE like 'ROLE%';

-- hiển thị các role mà NV101 được cấp
select * from Dba_role_privs where grantee like 'NV101';

-- hiển thị các quyền được cấp trên bảng của các role
select * from Role_tab_privs where role like 'ROLE%';

select * from Dba_roles;
select * from Dba_role_privs;
select * from Role_tab_privs;
select * from User_tab_privs;
select * from Dba_profiles;
select * from User_tab_privs;
select * from dba_role_privs where grantee = 'NV101';
select * from User_tab_privs where grantee = 'NV101';
select * from User_role_privs where grantee = 'NV101';

grant role_nv to NV101;

select * from User_role_privs;