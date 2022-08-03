FROM python:3.10 as requirements-stage

RUN pip install pipenv

COPY ./Pipfile ./Pipfile.lock /tmp/

WORKDIR /tmp

RUN pipenv requirements --exclude-markers > requirements.txt

FROM python:3.10

WORKDIR /home

COPY --from=requirements-stage /tmp/requirements.txt /home/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /home/requirements.txt

COPY ./app /home/app

ENTRYPOINT [ "uvicorn" ]
CMD [ "app.main:app", "--host", "0.0.0.0", "--port", "80"]