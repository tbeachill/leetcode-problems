import pandas as pd

def game_analysis(activity: pd.DataFrame) -> pd.DataFrame:
    result = (activity.groupby('player_id')
                    .agg({'event_date':'min'})
                    .rename(columns={'event_date':'first_login'})
                    .reset_index())

    return result
