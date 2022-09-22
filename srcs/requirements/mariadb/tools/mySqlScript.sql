create database if not exists wordpress;
create user apommier@'%' identified by '1234';
grant all privileges on *.* to apommier@'%';
flush privileges;