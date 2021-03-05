SELECT * FROM blackup.product;

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

-- 1번 상품의 모든 정보 가져오기
select *
from product join colorset on product.pdID = colorset.pdID
			 join sizeset on product.pdID = sizeset.pdID
             join category on product.pdID = category.pdID
             join imagepath on product.pdID = imagepath.pdID;

-- insert into product values(2,32000,'제네프 후드집업',0,0,0,0,0);
-- insert into product values(3,25000,'블론 브이넥 니트 베스트',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(4,23000,'재니스 부츠컷 밴딩 팬츠','long','블랙',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(5,32000,'제네프 후드집업','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(6,32000,'제네프 후드집업','free','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(7,32000,'제네프 후드집업','free','민트',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(8,32000,'제네프 후드집업','free','네이비',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(9,25000,'블론 브이넥 니트 베스트','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(10,25000,'블론 브이넥 니트 베스트','free','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(11,25000,'블론 브이넥 니트 베스트','free','베이지',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(12,31000,'루푸 SET-맨투맨,숏팬츠','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(13,31000,'루푸 SET-맨투맨,숏팬츠','free','딥그린',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(14,31000,'루푸 SET-맨투맨,숏팬츠','free','아이보리',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(15,31000,'루푸 SET-맨투맨,숏팬츠','free','옐로우',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(16,32000,'차이브 그라데이션 니트','free','그린',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(17,32000,'차이브 그라데이션 니트','free','블루',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(18,27000,'런잇 오버핏 코튼셔츠','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(19,27000,'런잇 오버핏 코튼셔츠','free','화이트',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(20,27000,'런잇 오버핏 코튼셔츠','free','네이브',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(21,27000,'런잇 오버핏 코튼셔츠','free','핑크',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(22,32000,'미니즈 아가일 가디건','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(23,32000,'미니즈 아가일 가디건','free','블루',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(24,32000,'미니즈 아가일 가디건','free','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(25,43000,'랫프터 셔츠 미니원피스','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(26,43000,'랫프터 셔츠 미니원피스','free','베이지',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(27,43000,'랫프터 셔츠 미니원피스','free','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(28,24000,'메이킹 베이직 니트','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(29,24000,'메이킹 베이직 니트','free','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(30,24000,'메이킹 베이직 니트','free','그린',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(31,28000,'리처 와이드 코튼팬츠','S','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(32,28000,'리처 와이드 코튼팬츠','S','네이비',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(33,28000,'리처 와이드 코튼팬츠','S','베이지',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(34,28000,'리처 와이드 코튼팬츠','S','오트밀',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(35,28000,'리처 와이드 코튼팬츠','S','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(36,28000,'리처 와이드 코튼팬츠','M','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(37,28000,'리처 와이드 코튼팬츠','M','네이비',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(38,28000,'리처 와이드 코튼팬츠','M','베이지',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(39,28000,'리처 와이드 코튼팬츠','M','오트밀',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(40,28000,'리처 와이드 코튼팬츠','M','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(41,28000,'리처 와이드 코튼팬츠','L','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(42,28000,'리처 와이드 코튼팬츠','L','네이비',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(43,28000,'리처 와이드 코튼팬츠','L','베이지',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(44,28000,'리처 와이드 코튼팬츠','L','오트밀',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(45,28000,'리처 와이드 코튼팬츠','L','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(46,16000,'리아빅 라운드 티셔츠','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(47,16000,'리아빅 라운드 티셔츠','free','블루',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(48,16000,'리아빅 라운드 티셔츠','free','그린',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(49,32000,'리타 블루 스트레이트 데님팬츠','S',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(50,32000,'리타 블루 스트레이트 데님팬츠','M',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(51,32000,'리타 블루 스트레이트 데님팬츠','L',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(52,29000,'소튼 크롭 워머 후드집업','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(53,29000,'소튼 크롭 워머 후드집업','free','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(54,29000,'소튼 크롭 워머 후드집업','free','화이트',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(55,29000,'소튼 크롭 워머 후드집업','free','오트밀',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(56,24000,'덴디 핀턱 슬랙스','S','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(57,24000,'덴디 핀턱 슬랙스','S','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(58,24000,'덴디 핀턱 슬랙스','S','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(59,24000,'덴디 핀턱 슬랙스','M','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(60,24000,'덴디 핀턱 슬랙스','M','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(61,24000,'덴디 핀턱 슬랙스','M','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(62,24000,'덴디 핀턱 슬랙스','L','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(63,24000,'덴디 핀턱 슬랙스','L','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(64,24000,'덴디 핀턱 슬랙스','L','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(65,26000,'아넷 오버핏 브이넥니트','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(66,26000,'아넷 오버핏 브이넥니트','free','차콜',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(67,26000,'아넷 오버핏 브이넥니트','free','스카이블루',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(68,26000,'아넷 오버핏 브이넥니트','free','민트',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(69,26000,'아넷 오버핏 브이넥니트','free','올리브',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(70,26000,'아넷 오버핏 브이넥니트','free','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(71,31000,'몽느 스티치 조거팬츠','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(72,31000,'몽느 스티치 조거팬츠','free','차콜',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(73,31000,'몽느 스티치 조거팬츠','free','그레이',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(74,31000,'몽느 스티치 조거팬츠','free','백멜란지',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(75,14000,'트윙 프린팅 반팔티','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(76,14000,'트윙 프린팅 반팔티','free','아이보리',0,0,0,0,0);

-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(77,16000,'그렛 베이직 반팔티','free','블랙',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(78,16000,'그렛 베이직 반팔티','free','네이비',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(79,16000,'그렛 베이직 반팔티','free','멜란지',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(80,16000,'그렛 베이직 반팔티','free','옐로우',0,0,0,0,0);
-- insert into product(pdID,pdPrice,pdName,pdSize,pdColor,pdGPA5,pdGPA4,pdGPA3,pdGPA2,pdGPA1)
-- values(81,16000,'그렛 베이직 반팔티','free','화이트',0,0,0,0,0);





