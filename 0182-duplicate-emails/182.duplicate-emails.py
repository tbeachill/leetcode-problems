import pandas as pd

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    result = (person[person.duplicated(subset=['email'])][['email']]
                .drop_duplicates()
                .reset_index(drop=True))

    return result
