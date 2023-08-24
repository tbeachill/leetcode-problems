import pandas as pd

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    result = (employee.merge(employee, left_on='managerId', right_on='id', suffixes=('', '_manager'))
        .query('salary > salary_manager')[['name']]
        .rename(columns={'name': 'Employee'}))

    return result
