FROM python:3.9


RUN apt-get update && \
    apt install -y netcat-traditional

RUN mkdir /app

WORKDIR /app

# Copy the Django project files into the container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt


COPY . .


COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh" ]