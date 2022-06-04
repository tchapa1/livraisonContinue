FROM nginx:1.17.1-alpine
COPY ./dist/myapp /usr/share/nginx/html
LABEL maintainer="hamza.smari@esprit.tn"
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]
