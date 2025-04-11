# Usa nginx alpine (leggero ed efficiente)
FROM nginx:alpine

# Rimuoviamo la pagina di default di nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiamo i nostri file nella directory di nginx
COPY index.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js

# Espone la porta 80
EXPOSE 80

# Avvia Nginx
CMD ["nginx", "-g", "daemon off;"]