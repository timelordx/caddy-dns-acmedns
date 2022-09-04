FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/acmedns

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
