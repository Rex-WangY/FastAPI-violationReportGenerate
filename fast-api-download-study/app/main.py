import pandas as pd
from fastapi import FastAPI, Request, Form
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates

from .crud import load_sql, run_query
from .utils import dataframe_to_excel_response

app = FastAPI()
templates = Jinja2Templates(directory="app/templates")

# 内存缓存，仅适合开发/单进程
query_cache = {}

@app.get("/violation_report_generate", response_class=HTMLResponse)
async def get_violation_report_generate(request: Request):
    return templates.TemplateResponse("violation_report_generate.html", {"request": request})

@app.post("/violation_report_generate", response_class=HTMLResponse)
async def post_violation_report_generate(request: Request, symbol: str = Form(...)):
    sql_files = [
        "yh_max_price.sql",
        "yh_min_price.sql",
        "yh_avg_price.sql"
    ]
    result_dict = {}
    for sql_file in sql_files:
        sql = load_sql(sql_file).format(symbol=symbol)
        df = run_query(sql)
        result_dict[sql_file] = df
    # 查询结果缓存
    query_cache[symbol] = result_dict

    return templates.TemplateResponse(
        "violation_report_generate.html",
        {
            "request": request,
            "symbol": symbol,
            "result": {k: v.to_html() for k, v in result_dict.items()}
        }
    )

@app.post("/download_excel")
async def download_excel(symbol: str = Form(...)):
    if symbol in query_cache:
        result_dict = query_cache[symbol]
        dfs = []
        for sql_file, df in result_dict.items():
            df = df.copy()
            df["source_table"] = sql_file.replace(".sql", "")
            dfs.append(df)
        final_df = pd.concat(dfs, ignore_index=True)
        return dataframe_to_excel_response(final_df, f"{symbol}_violation_report.xlsx")
    else:
        # 兜底查一次
        sql_files = [
            "yh_max_price.sql",
            "yh_min_price.sql",
            "yh_avg_price.sql"
        ]
        dfs = []
        for sql_file in sql_files:
            sql = load_sql(sql_file).format(symbol=symbol)
            df = run_query(sql)
            df["source_table"] = sql_file.replace(".sql", "")
            dfs.append(df)
        final_df = pd.concat(dfs, ignore_index=True)
        return dataframe_to_excel_response(final_df, f"{symbol}_violation_report.xlsx")
