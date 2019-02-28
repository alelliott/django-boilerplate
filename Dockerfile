FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /projectname

# Install app dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .