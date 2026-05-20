# pakai nginx ringan
FROM nginx:alpine

# hapus default nginx website
RUN rm -rf /usr/share/nginx/html/*

# copy file website kamu
COPY . /usr/share/nginx/html

# expose port 80
EXPOSE 80

# jalankan nginx
CMD ["nginx", "-g", "daemon off;"]