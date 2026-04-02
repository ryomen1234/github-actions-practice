FROM python:3.10-slim

WORKDIR /app

# Install dependencies first (better caching)
COPY req.txt .
RUN pip install --no-cache-dir -r req.txt

# Copy app code
COPY ./app ./app  

# Expose port
EXPOSE 8888

# Run FastAPI
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8888"]