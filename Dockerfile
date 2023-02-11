FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/acmedns \
    --with github.com/caddyserver/caddy/v2=github.com/caddyserver/caddy/v2@v2.6.3

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
