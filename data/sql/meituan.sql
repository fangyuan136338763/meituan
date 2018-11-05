SET NAMES UTF8;
DROP DATABASE IF EXISTS meituan;
CREATE DATABASE meituan CHARSET=UTF8;
USE meituan;
CREATE TABLE family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(32),
    img VARCHAR(256)
);
INSERT INTO family VALUES(10,'美食','img/home/grid/grid_1.png');
INSERT INTO family VALUES(20,'美团超市','img/home/grid/grid_2.png');
INSERT INTO family VALUES(30,'生鲜果蔬','img/home/grid/grid_3.png');
INSERT INTO family VALUES(40,'美团专送','img/home/grid/grid_4.png');
INSERT INTO family VALUES(50,'晚餐优选','img/home/grid/grid_5.png');
INSERT INTO family VALUES(60,'甜点饮品','img/home/grid/grid_6.png');
INSERT INTO family VALUES(70,'小吃馆','img/home/grid/grid_7.png');
INSERT INTO family VALUES(80,'家常菜','img/home/grid/grid_8.png');

CREATE TABLE shop(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(256),
    title VARCHAR(64),
    sales INT,
    distance INT,
    p_time INT,
    s_price DECIMAL(9,2),
    isMtSend boolean,
    comment INT,
);

INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/cd70f381bb94c515b0fab7580cca310846686.jpg.webp','凤爪王烧烤龙虾总店',999,1.7,40,20,6.5,true,90);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/0.84.63/xianfu/aa86bc1b9a218ea5e094b861c03b59b94873.jpg.webp','湖北麦当劳解放路餐厅',979,2.1,30,0,false,99);
