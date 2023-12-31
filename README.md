# Dynamic Product

## Table of Contents

- [Description](#description)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
- [Database Setup](#database-setup)
- [Configuration](#configuration)
- [How to Upload Excel Files](#how-to-upload-excel-files)
- [Data Processing](#data-processing)
- [Class-Based Views](#class-based-views)

## Description

Dynamic Product project aims to be able to provide saving of dynamic excel entries in the MYSQL database.

## Technologies Used

- Django
- MySQL
- Pandas

## Project Structure
```
├── docker-compose.yml
├── Dockerfile
├── dynamic_model_creation
│   ├── asgi.py
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── entrypoint.sh
├── env.example
├── .gitignore
├── manage.py
├── products
│   ├── admin.py
│   ├── apps.py
│   ├── forms.py
│   ├── __init__.py
│   ├── migrations
│   │   ├── 0001_initial.py
│   │   └── __init__.py
│   ├── models.py
│   ├── templates
│   │   ├── base.html
│   │   └── product
│   │       ├── product_list.html
│   │       └── upload_excel.html
│   ├── tests.py
│   ├── urls.py
│   └── views.py
└── requirements.txt
```
## Setup Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/techdkumardev09/dynamic-product.git


## Database Setup

Install MYSQL and configure inside django settings.


## Configuration

- Activate virtualenv:
```
   python -m venv venv
   source venv/bin/activate
   cp env.example .env
```

- Install dependencies:
```
   pip install -r requirements.txt
```
if you face any error on ubuntu during installation run the below command and re-run the above command
```
sudo apt-get install python3-dev default-libmysqlclient-dev build-essential pkg-config
```

- Database migrations:
```
   python manage.py makemigrations
   python manage.py migrate
```

- Start the development server:
```
   python manage.py runserver
```

## How to Upload Excel Files

- visit: http://127.0.0.1:8080/upload
- now you can upload a file from the device
- click on upload button


## Data Processing

- Here we used Pandas to process the csv file and add it to database


## Class-Based Views:
   Using class based views for encapsulating related functionalities together.

### Thanks
