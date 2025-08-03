# pgAdmin trên Render
FROM dpage/pgadmin4

ENV PGADMIN_DEFAULT_EMAIL=admin@localhost.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123

EXPOSE 80
