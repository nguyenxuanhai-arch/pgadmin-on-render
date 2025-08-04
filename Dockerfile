FROM dpage/pgadmin4:latest

# Config email và password cho pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=admin@codechallenge.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123
ENV PGADMIN_LISTEN_PORT=10000

EXPOSE 10000

CMD ["/entrypoint.sh"]
