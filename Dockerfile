FROM python:3.10

WORKDIR /usr/src/app

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80" ]