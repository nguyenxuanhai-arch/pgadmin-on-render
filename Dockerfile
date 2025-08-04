# Dùng image pgAdmin chính thức
FROM dpage/pgadmin4:latest

# Thiết lập biến môi trường cho tài khoản admin
ENV PGADMIN_DEFAULT_EMAIL=admin@codechallenge.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123

# Mở port cho pgAdmin
EXPOSE 80

# Giữ container chạy
CMD ["pgadmin4"]
