-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:48:35.144




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV char(5)  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh bit  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    Mucluong money  NOT NULL,
    Maphong char(5)  NOT NULL,
    TPhongban_Maphong char(5)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong char(5)  NOT NULL,
    Tenphong nvarchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (Maphong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.

