FROM python:3.12-bullseye

WORKDIR /app

# Install system dependencies for ML & Flask
RUN apt-get update && apt-get install -y --no-install-recommends \
        apt-utils \
        build-essential \
        gcc \
        g++ \
        gfortran \
        libatlas-base-dev \
        liblapack-dev \
        libblas-dev \
        libfreetype6-dev \
        libpng-dev \
        pkg-config \
        libpq-dev \
        curl \
        awscli \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "application.py"]
