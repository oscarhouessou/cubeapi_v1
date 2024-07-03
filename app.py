from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

app = FastAPI()
# commentaire
class NumberInput(BaseModel):
    number: float

@app.post("/cube")
def cube(input: NumberInput):
    result = input.number ** 3
    return {"result": result}

if __name__ == '__main__':
    import uvicorn
    uvicorn.run(app, host='0.0.0.0', port=8000)
