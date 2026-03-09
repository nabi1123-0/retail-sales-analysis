import pandas as pd

df = pd.read_csv("sales_data.csv")

# clean missing values
df = df.dropna()

# convert date column
df['order_date'] = pd.to_datetime(df['order_date'])

# sales by category
sales_by_category = df.groupby('product_category')['sales_amount'].sum()

print(sales_by_category)
