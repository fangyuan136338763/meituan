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
    distance FLOAT,
    p_time INT,
    p_price INT,
    s_price DECIMAL(9,2),
    isMtSend boolean,
    comment FLOAT,
    fid INT
);

INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/cd70f381bb94c515b0fab7580cca310846686.jpg.webp','凤爪王烧烤龙虾总店',999,1.7,40,20,6.5,true,4.5,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/0.84.63/xianfu/aa86bc1b9a218ea5e094b861c03b59b94873.jpg.webp','湖北麦当劳解放路餐厅',979,2.1,30,0,9,false,4.6,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/5eb3516df167bbf9f20c69a55a708241173531.jpg.webp','猫蒲夜宵（菱角湖店）',999,4.3,39,0,8,false,4.7,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/d253e010c7830f7e33e8929ea651c434236749.jpg.webp','淘气牛杂馆',989,1.6,30,20,6,true,4.5,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/c1350465b58699c6e3bc936b5e533d4854917.jpg.webp','处女座的烧烤店',999,1.2,37,0,4.5,false,4.4,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/6410ab3b6237352be0ba7812557f241f257510.jpg.webp','光头卤（南京路店）',999,2.2,34,38,7,false,4.6,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/1a0e96d287a516351293c44b355361e541923.jpg.webp','新疆风味阿木提烧烤炒菜',34,2.7,39,20,6.5,true,1.0,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/d2006ebe4d40991b0a50f4bf3c94f05a284587.jpg.webp','刘半夜',529,0.6,30,20,6.5,true,4.0,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/22c0a307f0c4f4b0af3c34e7afbd000987785.jpg.webp','虾蟹宝宝',258,0.5,30,0,4.5,false,4.2,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/489731c04a62dbc7561e14ef35cf232b55605.jpg.webp','蔡锷酒家私房菜',479,0.4,30,20,7,true,4.1,10);


INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/9adbf0acd109daeb23f55afbf2006d7310569.jpg.webp','全时便利店（安静小区店）',799,2.2,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/dfd7292def76eadb854bb0c19a4d1ac79681.jpg.webp','Today（南京路店）',256,2.2,30,30,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/963eac740b718c00842179d11c2902e137173.jpg.webp','可多（中城国际店）',799,2.2,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/business/7aef2827c48aca43fcd40d3cd71e318e102104.jpg.webp','加国超市',999,0.8,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/ab670478cd6b9a9ee9527b2aebb070a127810.jpg.webp','天富便利店（万科金色家园店）',799,3.2,30,20,7,false,4.9,20);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/447e3c06fac87f97ab5143bd04a1dcee62735.jpg.webp','可多超市（极速街店）',333,1.5,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/1a6f7c9384d9154cdeeb9b6a6dd1411120906.jpg.webp','慕臣便利店（江汉路店）',555,2.2,30,20,7,false,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/de64196b984f70b2a87f492849f396de71087.jpg.webp','Today（武汉剧院店）',799,2.2,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/821ea28c3f7d8b4332ce52e1def5788710075.jpg.webp','美宜佳（万科金色家园店）',532,1.1,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/3aa5ea3192c41d5253b337ecafbb2fad7631.jpg.webp','爱马红酒直达.',799,2.5,30,20,7,true,4.9,20);


INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/a82a92be629d5866602d3917ed0ce77532768.jpeg.webp','长合生鲜配送.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/e965832f019868f8cc178b23ea80bbcf34025.jpg.webp','果然鲜（循礼门店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/84bfd79b23e5043c2a63921d28b77c6e216911.jpg.webp','好新鲜水果店（循礼门店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/30698373c2628d7840d5301b379dba14349035.jpg.webp','农夫果蔬（有机绿色菜）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/a2e751733ec79e3ff3ec1f23aa277a3d37307.jpg.webp','果缘（北湖店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/a2237139faee6ef2b7ad19522ef767fa43283.jpg.webp','优鲜VC（宝丰店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/business/99c762a80df125613154d345e5fbf5ac245119.jpg.webp','果果联盟（宝丰街店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/2dfc9bd62bec8f1445fdceab206a7e2c22528.jpg.webp','四溢果园水果店.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/0445ea8aec0fcc8d4eb4244296d9ba86105080.jpg.webp','金色田园生鲜配送（崇仁店）.',64,1.3,69,20,2,false,4.9,30);
