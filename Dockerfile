FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN apt install -y nginx
COPY ./2111_pro_line/* /var/www/html/
#COPY ./tutorial /etc/nginx/sites-available/
CMD service nginx restart
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
