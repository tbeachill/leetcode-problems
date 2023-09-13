import pandas as pd

def biggest_single_number(my_numbers: pd.DataFrame) -> pd.DataFrame:
    result = pd.DataFrame({'num' : [(my_numbers.groupby('num')
                                            .size()
                                            .reset_index(name='count')
                                            .query('count == 1')['num']
                                            .max())]})

    return result
