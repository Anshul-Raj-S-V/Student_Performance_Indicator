FROM python:3.12-slim

WORKDIR /app

# Copy only requirements first for faster caching
COPY requirements.txt .

# Install system dependencies needed for many Python packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    libpq-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip, setuptools, wheel
RUN pip install --upgrade pip setuptools wheel

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Optional: install AWS CLI if needed
RUN apt-get update && apt-get install -y --no-install-recommends awscli \
    && rm -rf /var/lib/apt/lists/*

# Expose port and define default command
EXPOSE 5000
CMD ["python", "application.py"]

