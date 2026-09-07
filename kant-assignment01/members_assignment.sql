
--part 1

create schema practice;

create TABLE practice.members (
    member_id SERIAL primary KEY,
    name VARCHAR(50) not NULL,
    email VARCHAR(100) unique not NULL,
    age INTEGER,
    joined_at DATE
);

--part 2

insert INTO practice.members
(name, email, age, joined_at)VALUES
('이상재','tkdwodlaek@example.com',25,'2026-11-01'),

insert INTO practice.members
(name, email, age, joined_at)VALUES
('이말숙','gdgddgk@example.com',60,'2019-08-01'),
('이효정','dgjdiln@example.com',10,'2020-09-01'),
('김하재','gdgds@example.com',30,'2016-11-01'),
('김태림','fsdahfh@example.com',25,'2024-11-01'),
('하자우','ashshfs@example.com',34,'2006-11-01');

SELECT*
FROM practice.members;

select name, email
from practice.members;

select name, age >= 25
from practice.members;

select*
from practice.members
where name like '김%';

select*
from practice.members
order by age desc;

select*
from practice.members
order by joined_at asc;

--part 3

UPDATE practice.members 
SET age=30
WHERE member_id=1;

delete
FROM practice.members
WHERE member_id=5;

--part 4

select count(member_id)
from practice.members;

select avg(age)
from practice.members;

select max(age)
from practice.members;

select min(age)
from practice.members;

# 확인 질문 답
-- 다음 질문에 본인의 말로 짧게 답변해주세요.

-- 1. `PRIMARY KEY`는 왜 필요한가요? 그 테이블에서 기준이 되는 컬럼이어서
-- 2. `WHERE` 없이 `UPDATE` 또는 `DELETE`를 실행하면 어떤 문제가 발생할 수 있나요? 모든 데이터가 바뀌거나 삭제되어서 돌이킬 수 없는 결과 생길 수 있음
-- 3. `SELECT *`와 필요한 컬럼만 선택하는 SQL의 차이는 무엇인가요? select * 은 from으로 선택한 테이블의 전체 정보를 선택하지만 테이블의 컬럼명을 select뒤에 넣으면 원하는 컬럼만 조회 가능
-- 4. `COUNT()`와 `AVG()`는 각각 어떤 값을 계산하나요? count()는 갯수, avg()는 값의 평균
-- 5. Python에서 데이터를 처리하는 것과 DB에서 SQL로 데이터를 조회하는 것의 차이를 어떻게 이해했나요? 파이썬에서 데이터 처리는 약간 덜 전문적이라면 sql은 조회, 수정, 입력 등이 매우 편함