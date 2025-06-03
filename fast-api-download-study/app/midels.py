from pydantic import BaseModel

class AccountQuery(BaseModel):
    symbol: str