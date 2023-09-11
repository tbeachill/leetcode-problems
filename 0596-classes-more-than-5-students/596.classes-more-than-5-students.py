import pandas as pd

def find_classes(courses: pd.DataFrame) -> pd.DataFrame:
    result = pd.DataFrame((courses.groupby('class')
                                .count()
                                .query('student >= 5').index))

    return result
