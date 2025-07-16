# === Stage 1: Build environment ===
FROM python:3.10-slim AS builder

# Set working directory
WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y gcc

# Copy and install Python dependencies in a virtual environment
COPY requirements.txt .
RUN python -m venv /venv && \
    /venv/bin/pip install --upgrade pip && \
    /venv/bin/pip install -r requirements.txt

# Copy the app source code
COPY . .

# === Stage 2: Production image ===
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy virtual environment from builder stage
COPY --from=builder /venv /venv

# Copy app source code from builder
COPY --from=builder /app /app

# Activate venv by default
ENV PATH="/venv/bin:$PATH"

# Expose port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
