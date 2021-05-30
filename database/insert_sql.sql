use entity;
 
insert into role (name, role) values (N'Quản Lí',N'ADMIN');
insert into role (name, role) values (N'Người dùng',N'USER');
--insert account
insert into Account (username, PassWord, fullname, status ) values (N'dyu','$2a$10$FkIfJ5/sCqC/VKUYk8xVruLE5wRCbP.HsoT/c.4v9fTeynBg1QWLy',N'Trần Khánh Duy',1) ;
insert into Account (UserName, PassWord, fullname, status) values (N'cuong','$2a$10$FkIfJ5/sCqC/VKUYk8xVruLE5wRCbP.HsoT/c.4v9fTeynBg1QWLy',N'Mai Xuân Cường',1) ;
insert into Account (UserName, PassWord, fullname, status) values (N'duong','$2a$10$FkIfJ5/sCqC/VKUYk8xVruLE5wRCbP.HsoT/c.4v9fTeynBg1QWLy',N'Quàng Văn Dương',1) ;
insert into Account (UserName, PassWord, fullname, status) values (N'binh','$2a$10$FkIfJ5/sCqC/VKUYk8xVruLE5wRCbP.HsoT/c.4v9fTeynBg1QWLy',N'Trương Thanh Bình',1) ;

INSERT INTO user_role(userid,roleid) VALUES (1,1);
INSERT INTO user_role(userid,roleid) VALUES (2,1);
INSERT INTO user_role(userid,roleid) VALUES (3,1);
INSERT INTO user_role(userid,roleid) VALUES (4,2);

INSERT INTO Danhmuc(tendm,code) values(N'Áo sơ mi','ao-so-mi');
INSERT INTO Danhmuc(tendm,code) values(N'Áo Po-Lo',N'ao-po-lo');
INSERT INTO Danhmuc(tendm,code) values(N'Áo Cotton compact ngắn tay',N'ao-cotton-ngan-tay');
INSERT INTO Danhmuc(tendm,code) values(N'Áo Cotton compact dài tay',N'ao-cotton-dai-tay');
INSERT INTO Danhmuc(tendm,code) values(N'Quần Jogger',N'quan-jogger');
INSERT INTO Danhmuc(tendm,code) values(N'Quần Kaki',N'quan-kaki');
INSERT INTO Danhmuc(tendm,code) values(N'Quần Short',N'quan-short');


INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo Thun Cổ Tròn Đơn Giản M2',N'Áo Thun Cổ Tròn Đơn Giản M2',N'aothun1.jpg',2);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo Thun Cổ Trụ Đơn Giản J01',N'Áo Thun Cổ Trụ Đơn Giản J01',N'aothun2.pg',2);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo sơ mi Bamboo Ex-Soft ',N'Áo sơ mi nam dài tay Bamboo Ex-Soft kháng khuẩn màu đen',N'SOMI1.jpg',1);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo sơ mi  Modal-Bre',N'Áo sơ mi nam dài tay Modal-Bre thoát ẩm vượt trội màu trắng ',N'somi2.jpg',1);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo sơ mi Nano-Tech Easycare',N'Áo sơ mi nam dài tay Nano-Tech Easycare chống nhăn màu trắng',N'somi3.jpg',1);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo thun Cotton CompactShark Tank',N'Áo thun nam Cotton Compact phiên bản Shark Tank in ngực trái - Màu Đen',N'aothunngan4.jpg',3);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo thun Cotton Compact Premium',N'Áo thun nam Cotton Compact phiên bản Premium chống nhăn - Đen',N'aothunngan5.jpg',3);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo thun Cotton CompactPremium in Care&Share',N'Áo thun nam Cotton Compact phiên bản Premium in Care&Share màu đen',N'aothunngan6.jpg',3);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N'Áo giữ nhiệt nam Smart Heat ấm hơn bao giờ hết',N'Áo giữ nhiệt nam Smart Heat ấm hơn bao giờ hết',N'aothundai1.jpg',4);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N' Áo thun nam dài tay Prime Henley 3 nút Cotton Compact phiên bản Premium - Xanh lam',N' Áo thun nam dài tay Prime Henley 3 nút Cotton Compact phiên bản Premium - Xanh lam',N'aothundai2.jpg',4);
INSERT INTO sanpham(tensp,mota,hinhanh,category_id) values(N' Áo thun dài tay nam Cotton Compact phiên bản Premium - Xanh lam',N' Áo thun dài tay nam Cotton Compact phiên bản Premium - Xanh lam',N'aothundai3.jpg',4);
