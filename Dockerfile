FROM python:3.9.0

WORKDIR /home/

RUN git clone https://www.github.com/josephsssss/pinterest.git

WORKDIR /home/pinterest/

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]