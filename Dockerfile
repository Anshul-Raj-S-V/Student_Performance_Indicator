FROM python:3.12-slim

WORKDIR /app

# 1️⃣ Install all required system dependencies for ML & data packages
RUN apt-get update && apt-get install -y --no-install-recommends \
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
    && rm -rf /var/lib/apt/lists/*

# 2️⃣ Copy requirements first for better caching
COPY requirements.txt .

# 3️⃣ Upgrade pip, setuptools, and wheel
RUN pip install --upgrade pip setuptools wheel

# 4️⃣ Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy the rest of your project files
COPY . .

# 6️⃣ (Optional) Install AWS CLI if needed
RUN apt-get update && apt-get install -y --no-install-recommends awscli \
    && rm -rf /var/lib/apt/lists/*

# 7️⃣ Expose Flask port
EXPOSE 5000

# 8️⃣ Run the Flask app
CMD ["python", "application.py"]
