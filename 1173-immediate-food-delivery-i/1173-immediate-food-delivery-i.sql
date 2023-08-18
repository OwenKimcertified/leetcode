select round(100*avg(order_date = customer_pref_delivery_date), 2) as immediate_percentage  
from delivery ;