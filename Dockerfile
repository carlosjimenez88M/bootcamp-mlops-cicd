FROM python:3.11-slim

WORKDIR /app

# Install curl for healthcheck
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Copy API source code
COPY src/api/ .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Create models directory structure
RUN mkdir -p /app/models/trained

# Copy trained models (if they exist)
COPY models/ /app/models/

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]