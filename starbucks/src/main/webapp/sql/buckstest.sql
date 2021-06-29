select * from tab;
select * from member;
select * from orders;
select * from seq;

drop table orders purge;

delete from member;

create table product(
    product_number number,
    p_category varchar2(20) not null ,
    p_name varchar2(50) not null ,
    p_price number not null ,
    p_img varchar2(100) not null ,
    p_subtitle varchar2(2000)  ,
    p_desc varchar2(4000),
    p_ename varchar2(50) not null,
    primary key(product_number)
);

create table food(
	product_number number primary key not null,
    f_category varchar2(20) not null,
	f_name varchar2(50) not null,
	f_ename varchar2(50) not null,
	f_desc varchar2(2000) not null,
	f_subtitle varchar2(200),
	f_price number not null,
   	f_img varchar2(100) not null,
	f_calorie number not null,
	f_sugar number not null,
	f_protein number not null,
	f_natrium number not null,
	f_fat number not null,
	f_caffeine number not null );

create table member (
	id varchar2(100),
	m_pw varchar2(100) not null,
	m_nick varchar2(100) not null,
	m_name varchar2(100) not null,
	m_birth1 varchar2(100) not null,
	m_birth2 varchar2(100) not null,
	m_birth3 varchar2(100) not null,
	m_phone1 varchar2(100) not null,
	m_phone2 varchar2(100) not null,
	m_phone3 varchar2(100) not null,
   	m_mail varchar2(100) not null,
   	m_post varchar2(100) not null,
   	m_adds varchar2(100) not null,
   	primary key(id)
);		

create table orders (
		order_number number,
		id varchar2(20),
		product_number number not null,
		o_price number not null,
		o_quantity number not null,
		o_paytype varchar2(20) not null,
		o_totalprice number not null,
		o_req varchar2(200),
		o_confirm varchar2(20) not null,
		o_check timestamp not null
);


select * from orders;

ALTER TABLE orders DROP CONSTRAINT product_number;

alter table orders add primary key (order_number);
alter table orders add foreign key (id) references member(id);
alter table orders add foreign key (product_number) references food(product_number);
alter table orders add foreign key (product_number) references product(product_number);
 
create table board(
	b_num number,
	id varchar2(20) not null,
	b_title varchar2(100) not null,
	b_cont varchar2(2000) not null,
	b_img varchar2(100),
	b_reg timestamp not null,
	b_hits number,
	b_mark float,
	primary key(b_num),
	foreign key(id) references member(id)
);

create sequence starb_seq
start with 1
increment by 1
nocache;

create sequence order_seq
start with 1
increment by 1
nocache;

	