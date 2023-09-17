import pandas as pd

def sales_analysis(product: pd.DataFrame, sales: pd.DataFrame) -> pd.DataFrame:
    first_q = (sales.query('sale_date >= "2019-01-01" and sale_date <= "2019-03-31"'))
    outer = (sales.query('sale_date < "2019-01-01" or sale_date > "2019-03-31"'))

    ids = first_q[~first_q['product_id'].isin(outer['product_id'])]
    result = product[product['product_id'].isin(ids['product_id'])][['product_id', 'product_name']]

    return result
