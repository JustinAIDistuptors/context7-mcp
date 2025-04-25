FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY context7_server.py .

ENV PORT=8080
ENV SERVICE_NAME=context7-mcp

CMD ["uvicorn", "context7_server:app", "--host", "0.0.0.0", "--port", "8080"]
