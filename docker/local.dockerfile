## Image Setup
# Python Version
ARG PYTHON_VERSION=3.11

# Image Source
FROM python:${PYTHON_VERSION}-slim AS base

## Setting Environment Variables
# Prevents .pyc Files
ENV PYTHONDONTWRITEBYTECODE=1

# Prevents buffers for stdout and stderr
ENV PYTHONUNBUFFERED=1

## Container-Specific Setup
# Creating Non-Privileged User
ARG USERID=1000
ARG USERNAME=nonprivuser
RUN adduser \
    --disabled-password \
    --gecos "" \
    --uid ${USERID} \
    ${USERNAME}

# Creating Working Directory
WORKDIR /code

# Installing Dependencies
COPY ./requirements.txt /code/requirements.txt

RUN python3 -m pip install --no-cache-dir -r requirements.txt \
    && python3 -m pip install --no-cache-dir jupyter -U \
    && python3 -m pip install --no-cache-dir jupyterlab

RUN rm /code/requirements.txt

# Changing Ownership & Permissions of Working Directory
RUN chown -R ${USERNAME}:${USERNAME} /code \
    && chmod -R 755 /code

# Switching to Non-Privileged User
USER ${USERNAME}

## Gathering Container Contents
# Copying Notebook Code
COPY ./notebooks /code/notebooks

# Copying Data
COPY ./data /code/data

# Copying Models
COPY ./models /code/models

## Finalizing Container Properties
# Exposing Port for Jupyter Server
EXPOSE 8888

# Launching Notebook Server
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser"]