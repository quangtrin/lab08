USE DBHousing;
go

/* CREATE TABLE KhachHang(
MaKH INT NOT NULL,
HoTen NVARCHAR(50) NOT NULL,
SoDienThoai INT NOT NULL,
CoQuan NVARCHAR(100) NOT NULL); 

CREATE TABLE NhaChoThue(
MaN VARCHAR(4) NOT NULL,
diaChi NVARCHAR(100) NOT NULL,
GiaThue INT NOT NULL,
TenChuNha NVARCHAR(50) NOT NULL); 

CREATE TABLE HopDong(
MaN VARCHAR(4) NOT NULL,
MaKH INT NOT NULL,
NgayBatDau DATE NOT NULL,
TenChuNha DATE NOT NULL); 

ALTER TABLE KhachHang 
ADD CONSTRAINT khachhang_pk PRIMARY KEY (MaKH);

ALTER TABLE NhaChoThue 
ADD CONSTRAINT PK_NhaChoThue PRIMARY KEY (MaN);

ALTER TABLE HopDong
ADD CONSTRAINT FK_MaKH 
FOREIGN KEY (MaKH)
REFERENCES KhachHang(MaKH);

ALTER TABLE HopDong
ADD CONSTRAINT FK_MaN 
FOREIGN KEY (MaN)
REFERENCES NhaChoThue(MaN);

sp_rename 'HopDong.TenChuNha', 'NgayKetThuc', 'COLUMN';
*/

/* INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (1,N'Trình Lê Hào Quang',0123456789,N'Hà Nội');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (2,N'Lê Thị Nguyệt',0123356789,N'Vĩnh Long');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (3,N'Nguyễn Thị Diệu Linh',0123486789,N'Vĩnh Phúc');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (4,N'Đinh Văn Hùng',1234567109,N'Sơn La');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (5,N'Mai Văn Tường',32782374,N'Hà Nội');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (6,N'Nghiêm Đình Minh',234328982,N'Hà Nội');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (7,N'Phạm Tuấn Anh',293724983,N'Hà Nội');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (8,N'Phạm Trung Hiếu',73721120,N'Hà Nội');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (9,N'Ngô Thị Hồng Hạnh',0123456789,N'Sơn La');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (10,N'Nguyễn Thị Thu',3893489,N'Sơn La');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (11,N'Ngũ Duy Vinh',7494739,N'Sơn La');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (12,N'Võ Việt Bắc',0123456789,N'Vĩnh Phúc');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (13,N'Nguyễn Doãn Anh Thái',37482937,N'Vĩnh Phúc');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (14,N'Vũ Đình Hoài',38984793,N'Vĩnh Phúc');
INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan) VALUES (15,N'Phạm Vũ Hoàng',0123456789,N'Vĩnh Phúc'); */

/*INSERT INTO NhaChoThue (MaN,diaChi,GiaThue,TenChuNha)
VALUES
  ('E2F','Ap #384-8003 Fames Rd.',3685749,'Ariel Giles'),
  ('M1V','860-3039 In Avenue',15406813,'Olivia Herrera'),
  ('V1B','5721 Convallis St.',14852914,'Holly Sanchez'),
  ('J5W','739-3895 Ornare, Avenue',18995110,'Beck Ramirez'),
  ('K6L','P.O. Box 807, 6846 Non Ave',5664090,'Adena Lindsay'),
  ('V7D','P.O. Box 655, 3975 Mus. Rd.',14520821,'Cruz Santos'),
  ('V6Y','Ap #598-5977 Sem Street',5785220,'Guy Bentley'),
  ('Z6A','5900 Hendrerit St.',19416868,'Destiny Mccormick'),
  ('U8B','Ap #890-8311 Vitae St.',3342538,'Barclay Lambert'),
  ('V8E','754-5730 Phasellus Road',5944617,'Eagan Simmons');
  */
  /*SELECT * FROM KhachHang
  INSERT INTO HopDong (MaKH,MaN,NgayBatDau,TenChuNha)
VALUES
  (1,'V1B','2022-Jan-3','2025-Dec-26'),
  (2,'K6L','2021-Oct-17','2025-Oct-12'),
  (3,'K6L','2022-Dec-26','2025-Aug-9'),
  (4,'U8B','2023-Feb-20','2026-May-21'),
  (7,'U8B','2022-May-11','2026-May-9'),
  (7,'V8E','2022-May-4','2026-Mar-29'),
  (14,'Z6A','2021-Nov-8','2026-Apr-22'),
  (14,'J5W','2022-May-4','2026-Jan-25'),
  (3,'V1B','2022-Feb-5','2026-May-12'),
  (2,'E2F','2021-Nov-23','2026-Mar-4');*/



  -- INSERT TEST
  DECLARE @Number INT = 1000016;
  WHILE @Number < 100000000000
  BEGIN
  INSERT INTO KhachHang(MaKH,HoTen,SoDienThoai,CoQuan)
  VALUES (@Number,N'test',2473845,N'CoQuantest');
  SET @Number = @Number + 1;
  END
  GO
  ------------------------------------



  SELECT diaChi, TenChuNha
  FROM NhaChoThue
  WHERE GiaThue < 10000000;

  /*UPDATE NhaChoThue SET TenChuNha = N'Nông Văn Dền' WHERE MaN = 'V1B';*/
  SELECT KhachHang.MaKH,KhachHang.Hoten,KhachHang.Coquan FROM KhachHang, HopDong
  WHERE KhachHang.MaKH = HopDong.MaKH
        AND MaN IN (SELECT MaN FROM NhaChoThue WHERE TenChuNha = N'Nông Văn Dền');

  SELECT * FROM NhaChoThue
  WHERE MaN NOT IN (SELECT MaN FROM HopDong);

  SELECT * FROM NhaChoThue WHERE GiaThue
  IN(SELECT MAX(GiaThue) FROM NhaChoThue,HopDong
	 WHERE NhaChoThue.MaN = HopDong.MaN);
			

  CREATE INDEX Index_CoQuan ON dbo.KhachHang(CoQuan);
  SELECT * FROM KhachHang WHERE CoQuan = N'Vĩnh Phúc';
  go
  DROP INDEX Index_CoQuan ON dbo.KhachHang;
  CREATE INDEX Index_TenChuNha ON dbo.NhaChoThue(TenChuNha);
  SELECT TenChuNha, COUNT(diaChi) AS SoNhaChoThue FROM NhaChoThue
  GROUP BY TenChuNha
  go

  CREATE PROCEDURE HopDongLon
  @GiaThue INT
  AS
  BEGIN
		SELECT * FROM HopDong WHERE MaN
		IN (SELECT MaN FROM NhaChoThue WHERE GiaThue > @GiaThue)
  END
  GO

  
  CREATE PROC TongHopDong
  @TongGiaThue INT
  AS 
  BEGIN
		SELECT * FROM KhachHang WHERE MaKH
		IN (
		SELECT MaKH FROM HopDong,NhaChoThue
		WHERE HopDong.MaN = NhaChoThue.MaN
		AND
		( -DATEDIFF(MONTH,NgayKetThuc,NgayBatDau) *GiaThue > @TongGiaThue )

		)
  END
  go
  
  execute HopDongLon @GiaThue = 10000000;
  exec TongHopDong @TongGiaThue = 1000000000;
  


