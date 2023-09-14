import pandas as pd

def actors_and_directors(actor_director: pd.DataFrame) -> pd.DataFrame:
    result = (actor_director.groupby(['actor_id', 'director_id'])
                            .size()
                            .reset_index(name='count')
                            .query('count >= 3')
                            .drop(columns=['count']))

    return result
