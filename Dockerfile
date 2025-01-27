FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /hackernews
WORKDIR /hackernews
COPY requirements.txt /hackernews/
RUN pip install -r requirements.txt
COPY . /hackernews/
#RUN python manage.py makemigrations --setting=settings.develop 
#RUN python manage.py migrate --setting=settings.local 
CMD python manage.py runserver --setting=settings.local 0.0.0.0:8080
