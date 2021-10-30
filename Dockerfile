FROM nginx:stable-alpine
COPY ./build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
RUN addgroup -S simple-react && adduser -S -G simple-react simple-react 
USER simple-react 