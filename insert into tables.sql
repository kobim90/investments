-- insert into clients
insert into clients (name, email)
values ("kobi", "kobi1@gmail.com"),
		("kobe", "kobe@gmail.com"),
        ("cobi", "cobi@gmail.com"),
        ("kovi", "kovi@gmail.com"),
        ("cobe", "cobe@gmail.com"),
        ("covi", "covi@gmail.com"),
        ("cove", "cove@gmail.com");
        
-- insert into investment_pool
insert into investment_pool (name)
values ("investment1"),
		("investment2"),
        ("investment3"),
        ("investment4"),
        ("investment5"),
        ("investment6"),
        ("investment7"),
        ("investment8"),
        ("investment9"),
        ("investment10");
        
-- insert into stores
insert into stores (name, investment_pool_id)
values ("store1", 1),
("store2", 1),
("store3", 1),
("store4", 2),
("store5", 2),
("store6", 2),
("store7", 3),
("store8", 3),
("store9", 4),
("store10", 4),
("store11", 4),
("store12", 5),
("store13", 5),
("store14", 6),
("store15", 6),
("store16", 7),
("store17", 7),
("store18", 7),
("store19", 8),
("store20", 8),
("store21", 9),
("store22", 9),
("store23", 10),
("store24", 10);

insert into client_pool (client_id, investment_pool_id, amount_invested)
values (1, 1, 5000),
(1, 2, 3000),
(1, 3, 5000),
(2, 1, 4000),
(2, 4, 7000),
(3, 3, 6000),
(3, 5, 9000),
(4, 4, 4000),
(4, 6, 8000),
(5, 5, 2000),
(5, 7, 1000),
(6, 6, 9000),
(6, 8, 3000),
(7, 9, 2000),
(7, 10, 5000);