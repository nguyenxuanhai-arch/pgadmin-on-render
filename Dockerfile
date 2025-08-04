FROM python:3.11-slim

ENV PGADMIN_DEFAULT_EMAIL=admin@codechallenge.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123
ENV PGADMIN_LISTEN_PORT=10000

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget curl libpq-dev gcc libffi-dev \
    && pip install --no-cache-dir pgadmin4 gunicorn \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 10000

CMD ["gunicorn", "--bind", "0.0.0.0:10000", "pgadmin4.pgAdmin4:app"]
