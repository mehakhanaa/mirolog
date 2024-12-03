FROM alpine:3.5

COPY ./mirolog /app/mirolog
RUN chmod +x /app/mirolog

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT /app/mirolog
