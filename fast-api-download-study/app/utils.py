import pandas as pd
from fastapi.responses import StreamingResponse
from io import BytesIO

def dataframe_to_excel_response(df, filename='result.xlsx'):
    output = BytesIO()
    df.to_excel(output, index=False, engine='openpyxl')
    output.seek(0)
    return StreamingResponse(
        output,
        media_type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
        headers={"Content-Disposition": f"attachment; filename={filename}"}
    )