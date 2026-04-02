from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello from FastAPI 🚀\n This will now demostrate the real power of github actions"}

@app.get("/predict")
def predict(x: int):
    return {"result": x*2}