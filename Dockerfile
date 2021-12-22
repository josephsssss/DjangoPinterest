FROM python:3.9.0

WORKDIR /home/

RUN git clone https://www.github.com/josephsssss/pinterest.git

WORKDIR /home/pinterest/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN echo "SECRET_KEY=django-insecure-%my6fh**fa9w!@mti(c($se3*l5u8^wk2um8%p1+@zz4osjx*r" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["gunicorn", "pinterest.wsgi", "--bind", "0.0.0.0:8000"]