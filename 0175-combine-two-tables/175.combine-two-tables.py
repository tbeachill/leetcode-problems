import pandas as pd

def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    result = (pd.merge(person, address, on='personId', how='left')
                .filter(items=['firstName', 'lastName', 'city', 'state']))

    return result
