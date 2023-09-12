import pandas as pd

def sales_person(sales_person: pd.DataFrame, company: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    red_sellers = (sales_person.merge(orders, on='sales_id', how='outer')
                            .merge(company, on='com_id', how='left')
                            .query('name_y == "RED"')['sales_id'])

    result = pd.DataFrame(sales_person.query('sales_id not in @red_sellers')['name'])

    return result
