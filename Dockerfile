FROM python:3.14

WORKDIR /api_health

COPY ./requirements.txt /api_health/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /api_health/requirements.txt

COPY . /api_health

CMD ["fastapi", "run", "app.py", "--port", "8000"]
