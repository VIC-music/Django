# Using Alpine Linux as a base image
FROM python:3.8.2-alpine

# Working directory
RUN mkdir -p /usr/src/VIC
WORKDIR /usr/src/VIC

# Avoid writing compiled code to the disc
ENV PYTHONDONTWRITEBYTECODE 1

# Don't buffer the output streams
ENV PYTHONUNBUFFERED 1

# System dependencies
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev


# Python Dependency Installation
RUN pip --no-cache-dir install --upgrade pip
COPY ./pip_requirements.txt /usr/src/VIC/
RUN pip --no-cache-dir install -r pip_requirements.txt

# For Gunicorn, since it doesn't install on the default path
RUN PATH=$PATH:/usr/local/bin

# Copy everything else
COPY . /usr/src/VIC/

ENTRYPOINT ["/usr/src/VIC/entrypoint.sh"]
