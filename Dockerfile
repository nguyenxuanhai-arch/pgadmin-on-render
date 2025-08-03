FROM python:3.11-slim

ENV PGADMIN_DEFAULT_EMAIL=admin@example.com
ENV PGADMIN_DEFAULT_PASSWORD=admin

RUN pip install --no-cache-dir pgadmin4 gunicorn

EXPOSE 5050

CMD ["gunicorn", "--bind", "0.0.0.0:5050", "pgadmin4.pgAdmin4:app"]
