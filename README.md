## STUDENT PERFORMANCE INDICATOR🎓📊

A Machine Learning-powered web application to predict student performance and provide actionable insights, packaged as a Python project with Docker support.

## Table of Contents

  1.Project Overview
  2.Features
  3.Tech Stack
  4.Installation
  5.Running the Application
  6.Docker Deployment
  7.Usage
  8.Project Highlights
  9.Contributing
  10.License

  
## Project Overview 📝

  The Student Performance Indicator predicts student academic outcomes based on historical data, providing insights for both educators and students. It leverages Machine Learning models such as CatBoost& XGBoost         for accurate predictions and uses a Flask web interface to make it interactive and easy to use.
  By analyzing factors like gender, race, parental education, test preparation, and previous scores, the tool helps:
    1.Students identify strengths and areas for improvement
    2.Educators provide targeted guidance
    3.Schools make data-driven decisions

    
## Features ⚡

  1.Predict student performance using ML models
  2.Input form via Flask web interface
  3.Interactive results display on the web page
  4.Scalable and deployable with Docker
  5.Supports CSV-based batch predictions (extendable)
  6.Clean, modular code structure using Python packages



## Tech Stack 🛠️

  1.Programming Language: Python 3.12 ![Python](https://img.shields.io/badge/Python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)  
  2.Web Framework: Flask ![Flask](https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=flask&logoColor=white)  
  3.Machine Learning: scikit-learn ![Scikit-learn](https://img.shields.io/badge/scikit--learn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)  , CatBoost ![CatBoost](https://img.shields.io/badge/CatBoost-1F8ACB?style=for-the-badge&logo=catboost&logoColor=white), XGBoost ![XGBoost](https://img.shields.io/badge/XGBoost-FF9900?style=for-the-badge&logo=xgboost&logoColor=white)  
  4.Data Analysis: Pandas, NumPy
  5.Visualization: Seaborn, Matplotlib
  6.Deployment: Docker ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)  , Gunicorn
  7.Packaging: setuptools for modular project structure


## Installation 💻

# Clone the repository:
    git clone https://github.com/Anshul-Raj-S-V/Student_Performance_Indicator.git
    cd Student_Performance_Indicator
# Install Python dependencies:
    pip install --upgrade pip setuptools wheel
    pip install -r requirements.txt

## Running the Application 🚀

# Local development:
  python application.py
  Open your browser at http://127.0.0.1:8080 to access the app.

## Docker Deployment 🐳

# Build Docker Image:
    docker build -t student-performance-indicator .
# Run Docker Container:
    docker run -p 8080:5000 student-performance-indicator
    Access the app at http://localhost:8080
Docker ensures a reproducible and isolated environment, ideal for deployment.


## Usage 🖱️

  1.Open the app in a browser
  2.Fill in student details (gender, parental education, test prep, scores)
  3.Click Predict to see performance prediction
  4.View actionable insights and recommendations

## Project Highlights 🌟

  1.Modular Python package with setup.py for easy installation and reuse
  2.Custom ML pipeline (src/pipeline/predict_pipeline.py) for preprocessing and predictions
  3.Flask web app integrated with ML backend
  4.Dockerized deployment ensures portability and scalability
  5.Clear logging for prediction steps (print statements show pipeline flow)

## Contributing 🤝
Contributions are welcome!
  1.Fork the repository
  2.Create a branch: git checkout -b feature-name
  3.Commit changes: git commit -m "Add feature"
  4.Push: git push origin feature-name
  5.Open a Pull Request


