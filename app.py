from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def hello():
    return "hello world"

@app.get("/health")
def healthcheck():
    return {"status": "UP"}

