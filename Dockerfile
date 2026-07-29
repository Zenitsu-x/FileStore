FROM python:3.10-slim

WORKDIR /app

# Copy and install dependencies first
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files afterward
COPY . .

CMD ["python", "main.py"]

