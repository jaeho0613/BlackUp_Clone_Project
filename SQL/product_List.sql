-- 1개의 상품 등록 '재니스 부츠컷 밴딩 팬츠'는 고유한 1번이라는 상품 아이디 부여
insert into product values(1,23000,'재니스 부츠컷 밴딩 팬츠',0,0,0,0,0);

-- 1번 상품의 컬러는 2가지 '차콜과 블랙'
insert into colorset values(1, '차콜');
insert into colorset values(1, '블랙');

-- 1번 상품의 사이즈는 2가지 'short와 long'
insert into sizeset values(1,'short');
insert into sizeset values(1,'long');

-- 1번 상품의 카테고리는 'made'의 '하의'
insert into category values(1, 'made', '하의');

-- 1번 상품의 이미지 경로는 'black-up에서 따오기'
insert into imagepath values(1, 'https://black-up.kr/web/product/big/202102/c6784d0004c5fb1f78ac894eb45b9e97.jpg', '아무거나(아직사용X)');

insert into product values(2,32000,'제네프 후드집업',0,0,0,0,0);
insert into colorset values(2,'블랙');
insert into colorset values(2,'그레이');
insert into colorset values(2,'민트');
insert into colorset values(2,'네이비');
insert into sizeset values(2,'free');
insert into category values(2,'made','상의');
insert into imagepath values(2,'https://black-up.kr/web/product/big/202102/e6f88f4673be3333b98a28b7999c66e5.jpg','아무거나(아직사용X)');

insert into product values(3,25000,'블론 브이넥 니트 베스트',0,0,0,0,0);
insert into colorset values(3,'블랙');
insert into colorset values(3,'그레이');
insert into colorset values(3,'베이지');
insert into sizeset values(3,'free');
insert into category values(3,'made','상의');
insert into imagepath values(3,'https://black-up.kr/web/product/big/202102/fc74f662f7e2a921bba88775ee344da2.jpg','아무거나(아직사용X)');

insert into product values(4,31000,'루푸 SET-맨투맨,숏팬츠',0,0,0,0,0);
insert into colorset values(4,'블랙');
insert into colorset values(4,'딥그린');
insert into colorset values(4,'아이보리');
insert into colorset values(4,'옐로우');
insert into sizeset values(4,'free');
insert into category values(4, 'set','set');
insert into imagepath values(4,'https://black-up.kr/web/product/big/202102/aa5102cd8ebc7653c1a26440b44c3aa1.jpg','아무거나(아직사용X)');

-- TODAY'S NEW Items 상품 4가지
insert into product values(5,24000,'메이킹 베이직 니트',0,0,0,0,0);
insert into colorset values(5,'블랙');
insert into colorset values(5,'그레이');
insert into colorset values(5,'그린');
insert into sizeset values(5,'free');
insert into category values(5,'made','상의');
insert into imagepath values(5,'https://black-up.kr/web/product/big/202102/10625a9cb7632ac94dfef851d84f8ff4.jpg','아무거나(아직사용X)');

insert into product values(6,28000,'리처 와이드 코튼팬츠',0,0,0,0,0);
insert into colorset values(6,'블랙');
insert into colorset values(6,'네이비');
insert into colorset values(6,'베이지');
insert into colorset values(6,'오트밀');
insert into colorset values(6,'아이보리');
insert into sizeset values(6,'S');
insert into sizeset values(6,'M');
insert into sizeset values(6,'L');
insert into category values(6,'made','하의');
insert into imagepath values(6,'https://black-up.kr/web/product/big/202103/e57574e4cc55883c392c502b6da586b7.jpg','아무거나(아직사용X)');

insert into product values(7,16000,'리아빅 라운드 티셔츠',0,0,0,0,0);
insert into colorset values(7,'블랙');
insert into colorset values(7,'블루');
insert into colorset values(7,'그린');
insert into sizeset values(7,'free');
insert into category values(7,'made','상의');
insert into imagepath values(7,'https://black-up.kr/web/product/big/202102/827045095db41cc6798c34ac22545ce1.jpg','아무거나(아직사용X)');

insert into product values(8,32000,'리타 블루 스트레이트 데님팬츠',0,0,0,0,0);
insert into sizeset values(8,'S');
insert into sizeset values(8,'M');
insert into sizeset values(8,'L');
insert into category values(8,'made','하의');
insert into imagepath values(8,'https://black-up.kr/web/product/big/202103/54781434854cb2d50b8d27081f9bd61c.jpg','아무거나(아직사용X)');