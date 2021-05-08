FROM rust:latest

RUN apt-get update && \
    apt-get install libpq-dev -y && \
    cargo install --version=0.5.2 sqlx-cli --no-default-features --features postgres && \
    rustup component add clippy && \
    rustup component add rustfmt && \
    cargo install cargo-tarpaulin && \
    cargo install cargo-audit && \
    cargo install cargo-udeps && \
    cargo install bunyan