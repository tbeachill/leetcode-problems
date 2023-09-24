import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    result = (employee.sort_values(by='salary', ascending=False)
                    .drop_duplicates(subset='salary')
                    .iloc[1:2]['salary'])

    return pd.DataFrame({
        'SecondHighestSalary': [None if result.size < 1 else result.values[0]]
    })
