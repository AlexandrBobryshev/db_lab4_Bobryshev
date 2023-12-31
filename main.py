import psycopg2
import matplotlib.pyplot as plt

username = 'Bobryshev_Olexandr'
password = '111'
database = 'lab_3_DB'
host = 'localhost'
port = '5432'

'''
Загальна сума продажів кожного товару.
''' 

query_1 = '''
select items.item_name, round(sum(product_price * quantity) :: numeric, 2) as total_sales
from items
join order_items on order_items.item_name = items.item_name
group by items.item_name;
'''


'''
Загальна ціна кожного замовлення.
'''

query_2 = '''
select order_items.order_number, round(sum(product_price * quantity) :: numeric, 2) as total_price
from order_items 
join items on order_items.item_name = items.item_name
group by order_items.order_number
'''

'''
Залежність суми всього замовлення від середньої ціни товару в замовленні.
'''

query_3 = '''
select 
	order_items.order_number, 
	round(avg(items.Product_Price) :: numeric, 2) as average_item_price, 
	round(sum(items.Product_Price * order_items.Quantity) :: numeric, 2) as total_order_price
from order_items
join items on order_items .item_name = items.item_name
group by order_items.order_number
order by average_item_price;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

def print_function(cur):
    for row in cur:
        print(row)

with conn:

    cur = conn.cursor()
    cur.execute(query_1)
    
    print("\nQuery 1: Загальна сума продажів кожного товару.\n")
    print_function(cur)

    cur = conn.cursor()
    cur.execute(query_2)

    print("\nQuery 2: Загальна ціна кожного замовлення.\n")
    print_function(cur)  
    
    cur = conn.cursor()
    cur.execute(query_3)
    print("\nQuery 3: Залежність суми всього замовлення від середньої ціни товару в замовленні.\n")
    print_function(cur)  

