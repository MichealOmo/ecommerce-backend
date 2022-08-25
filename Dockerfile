FROM python:3.10
WORKDIR /usr/ecommerce/backend
ADD . /usr/ecommerce/backend
COPY wait-for-it.sh .
RUN chmod +x /usr/ecommerce/backend/wait-for-it.sh
RUN pip install -r requirements/base.txt
