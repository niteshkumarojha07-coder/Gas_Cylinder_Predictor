# Project Structure

The project structure for the Gas Cylinder Predictor can be summarized as follows:

```
 gas_cylinder_predictor/
 ├── data/
 │   ├── raw/                # Raw data files
 │   ├── processed/           # Processed data files
 ├── notebooks/                # Jupyter notebooks for analysis
 ├── src/                     # Source code for the project
 │   ├── __init__.py          # Makes src a Python module
 │   ├── data_preprocessing.py # Data preprocessing scripts
 │   ├── model.py             # Model definition
 │   ├── predict.py           # Model prediction scripts
 ├── requirements.txt          # Project dependencies
 ├── README.md                 # Project documentation
 └── PROJECT_STRUCTURE.md      # This file
```

# Database Schema

The database schema for the project consists of the following tables:

## Users
- **user_id** (Primary Key): Integer, Unique identifier for each user.
- **name**: String, Name of the user.
- **email**: String, Email address of the user.

## Gas_Cylinders
- **cylinder_id** (Primary Key): Integer, Unique identifier for each gas cylinder.
- **user_id** (Foreign Key): Integer, References the Users table.
- **type**: String, Type of gas cylinder (e.g., Domestic, Commercial).
- **status**: String, Status of the cylinder (e.g., Available, In Use).
- **last_inspection_date**: Date, Last inspection date for the cylinder.