-- product 전체 값 가져오기
select *
from product join colorset on product.pdID = colorset.pdID
			 join sizeset on product.pdID = sizeset.pdID
             join category on product.pdID = category.pdID
             join imagepath on product.pdID = imagepath.pdID;
             
-- 카테고리 정보
select distinct * from imagepath where cgName = 'made';
             
-- 특정 카테고리 상품 가져오기
select pdID, pdPrice, pdName
from product
where product.pdID in (select pdID
from category
where cgName = 'made'
);

-- pdID로 각 테이블 검사
select * from colorset where pdID like ( select pdID from product where pdID like 1 );
  
-- product 
select *
from product;

-- 상품 정보 가져오기 pdID
select pdID
from product
where pdName like '%재니스%';

-- 상품 정보 가져오기 pdName
select pdName
from product
where pdId like 1;
             
-- 상품 아이디로 검색하여 컬러셋 가져오기
select *
from product
where pdID like (
select pdID
from product
where pdID like 1
);

-- 상품 아이디로 검색하여 컬러셋 가져오기
select *
from colorset
where pdID like (
select pdID
from product
where pdID like 1
);

-- 상품 아이디로 검색하여 사이즈셋 가져오기
select *
from sizeset
where pdID like (
select pdID
from product
where pdID like 1
);

-- 상품명으로 검색하여 컬러셋 가져오기
select *
from colorset
where pdID like (
select pdID
from product
where pdName like '%제네프%'
);

-- 상품명으로 검색하여 사이즈셋 가져오기
select *
from sizeset
where pdID like (
select pdID
from product
where pdName like '%제네프%'
);

-- 상품명으로 검색하여 이미지 경로 가져오기
select *
from imagepath
where pdID like (
select pdID
from product
where pdName like '%제네프%'
);

-- 상품명으로 검색하여 카테고리 가져오기
select *
from category
where pdID like (
select pdID
from product
where pdName like '%제네프%'
);