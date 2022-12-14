FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/acmedns

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
