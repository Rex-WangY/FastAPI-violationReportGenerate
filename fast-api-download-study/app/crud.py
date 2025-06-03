import pandas as pd
from .db import engine

def load_sql(sql_filename):
    with open(f"app/sql/{sql_filename}", "r", encoding="utf-8") as f:
        return f.read()

def run_query(sql):
    with engine.connect() as conn:
        df = pd.read_sql(sql, conn)
    return df