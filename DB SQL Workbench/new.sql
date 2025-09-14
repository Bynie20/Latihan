use users;

insert into accounts values
(1301, 'Sultoni', 'Fani'),
(1302, 'Nabila', 'Naila'),
(1303, 'Vika', 'Jarodi');


UPDATE users.accounts SET username = 'XI Tel 10 Jaya Jaya Jaya' WHERE id = '1301';
DELETE FROM users.accounts WHERE id = '1303';

SELECT * FROM users.accounts;
