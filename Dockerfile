FROM nginx:1-alpine
COPY ./nginx.conf /etc/nginx/templates/nginx.conf.template
RUN rm -f /etc/nginx/conf.d/default.conf

# URI used for proxy_pass (e.g., api.example.com)
ENV UPSTREAM_URI=${UPSTREAM_URI}
# URI used for location (e.g., /)
ENV LOCATION_URI=${LOCATION_URI}
# secret token for authentication with upstream service
ENV API_KEY=${API_KEY}