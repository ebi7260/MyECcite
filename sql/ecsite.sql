set names utf8;
set foreign_key_checks=0;
drop database if exists ecsite02;

create database if not exists ecsite02;
use ecsite02;

drop table if exists login_user_transaction;

create table login_user_transaction(
  id int not null primary key auto_increment,
  login_id varchar(16) unique,
  login_pass varchar(16),
  user_name varchar(50),
  user_mail varchar(50),
  insert_date datetime,
  update_date datetime
  );

drop table if exists item_info_transaction;

create table item_info_transaction(
  id int not null primary key auto_increment,
  item_name varchar(30),
  item_price int,
  item_stock int,
  image_file_path varchar(100),
  insert_date datetime,
  update_date datetime
  );

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
  id int not null primary key auto_increment,
  item_transaction_id int,
  total_price int,
  total_count int,
  user_master_id varchar(16),
  pay varchar(30),
  item_stock int,
  insert_date datetime,
  delete_date datetime
  );

drop table if exists inquiry;

create table inquiry(
inquiry_name varchar(50),
inquiry_mail varchar(50),
qtype varchar(50),
body varchar(255),
master_id varchar(50)
);

INSERT INTO item_info_transaction(item_name,item_price,item_stock,image_file_path) VALUES
("ギター",60000,50,"./image/guitar1.jpg"),
("ドラム",75000,10,"./image/drum1.jpg"),
("ヴァイオリン",40000,15,"./image/violin1.jpg"),
("グランドピアノ",2000000,3,"./image/grandpiano.jpg"),
("タンバリン",1500,20,"./image/tambourine.jpg"),
("ベース",65000,30,"./image/base1.jpg");

INSERT INTO login_user_transaction(login_id,login_pass,user_name,user_mail) VALUES
("master","123","kanri","xxxxx@gmail.com"),
("internous","internous01","test","yyyy@yahoo.com");


