INSERT INTO items 
	(item_name, Product_Price)
VALUES 
	('Aloo Chaat' ,4.95),
	('Bhuna - Chicken' ,8.95),        
	('Bhuna - Lamb' ,8.95),
	('Chicken Pakora' ,5.95),
	('Chicken Tikka Masala' ,8.95),   
	('Garlic Naan' ,2.95),
	('King Prawn Balti' ,12.95),      
	('Korma - Prawn' ,9.95),
	('Mango Chutney' ,0.5),
	('Mushroom Rice' ,3.95),
	('Muttar Paneer' ,5.95),
	('Paneer Tikka Masala' ,8.95),    
	('Peshwari Naan' ,2.95),
	('Pilau Rice' ,2.95),
	('Plain Naan' ,2.6),
	('Plain Papadum' ,0.8),
	('Red Sauce' ,0.5);

INSERT INTO orders (order_number, order_date)
VALUES 
	(16084, '02/08/2019 14:11'),
	(16092, '02/08/2019 19:33'),
	(16096, '03/08/2019 17:18'),
	(16115, '03/08/2019 20:01'),
	(16118, '03/08/2019 20:25');
	
-- Вставка данных в таблицу Order_Items
INSERT INTO Order_Items (order_number, item_name, quantity)
VALUES
	(16118, 'Plain Papadum', 2),       
	(16118, 'King Prawn Balti', 1),    
	(16118, 'Garlic Naan', 1),
	(16118, 'Mushroom Rice', 1),       
	(16118, 'Paneer Tikka Masala', 1), 
	(16118, 'Mango Chutney', 1),       
	(16115, 'Chicken Pakora', 1),      
	(16115, 'Plain Papadum', 1),       
	(16115, 'Mango Chutney', 1),       
	(16115, 'Red Sauce', 1),
	(16115, 'Korma - Prawn', 1),       
	(16115, 'Peshwari Naan', 1),       
	(16115, 'Pilau Rice', 1),
	(16092, 'Aloo Chaat', 1),
	(16092, 'Chicken Tikka Masala', 1),
	(16092, 'Garlic Naan', 1),
	(16092, 'Pilau Rice', 1),
	(16092, 'Bhuna - Chicken', 1),     
	(16084, 'Muttar Paneer', 1),
	(16084, 'Garlic Naan', 1),
	(16084, 'Mushroom Rice', 1),
	(16096, 'Plain Naan', 1),
	(16096, 'Pilau Rice', 1),
	(16096, 'Chicken Tikka Masala', 1),
	(16096, 'Bhuna - Lamb', 1),
	(16096, 'Plain Papadum', 2);
