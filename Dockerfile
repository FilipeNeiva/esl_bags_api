FROM library/python:3.10-slim
 
RUN apt-get update \
    # dependencies for building Python packages
    && apt-get install -y build-essential \
    # psycopg2 dependencies
    && apt-get install -y libpq-dev \
    # Translations dependencies
    && apt-get install -y gettext \
    && apt-get install -y libcairo2 libpango-1.0-0 libpangocairo-1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info \
    # cleaning up unused files
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*
 
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
<<<<<<< HEAD
<<<<<<< HEAD:Dockerfile
=======
>>>>>>> 3919ac7 (config caprover)

COPY ./requirements /requirements
RUN pip install --no-cache-dir -r /requirements/prod.txt \
    && rm -rf /requirements
<<<<<<< HEAD
=======
 
COPY ./requirements/commun.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt \
    && rm -rf /requirements.txt
>>>>>>> 305a881 (change file requirements):DockerFile
=======
>>>>>>> 3919ac7 (config caprover)
 
COPY . /usr/src/app
 
EXPOSE 80
 
CMD ["sh", "./runserver.sh"]