create database users;
use users;
create table accounts
(
id int primary key not null ,
username varchar (50) not null,
passwords varchar (50) not null
);

CREATE USER 'newUser'@'localhost' IDENTIFIED BY '1989';
GRANT SELECT, INSERT, UPDATE, DELETE ON users.accounts TO 'newUser'@'localhost';
DROP USER 'newUser'@'localhost';

REVOKE SELECT ON users.accounts FROM 'newUser'@'localhost';
select user.host from mysql.user;
