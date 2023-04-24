FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY ./requirements.txt /tmp/requirements.txt

COPY ./app /app

EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install -r /tmp/requirements.txt

ENV PATH='/py/bin:$PATH'