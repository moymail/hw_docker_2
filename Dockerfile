FROM python:3.8

WORKDIR /stocks_products

COPY ./stocks_products /stocks_products/

RUN pip install -r /stocks_products/requirements.txt

ENV MY_ENV=netology

CMD python3 manage.py runserver 0.0.0.0:8000

RUN python /stocks_products/manage.py migrate