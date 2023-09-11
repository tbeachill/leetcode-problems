import pandas as pd

def largest_orders(orders: pd.DataFrame) -> pd.DataFrame:
    result = pd.DataFrame((orders.groupby('customer_number')
                                .count()
                                .sort_values(by='order_number', ascending=False)
                                .head(1)
                                .reset_index()['customer_number']))

    return result
