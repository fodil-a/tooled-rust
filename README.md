# Tooled rust

## Introduction
This image helps me speeding up Raspberry PI 4 CI pipeline,
This image has rust and all the necessary tooling.
Current images only target *arm64v8* arch.

## Content
The current pipeline needs:
- psql to wait the PG DB
- cargo / rustc for Rust toolchain
- clippy for linter
- sqlx-cli for DB creation & migrations
- rustfmt for formatting check
- cargo-audit for security checks

I also added:
- bunyan to format logs,
- cargo-udeps to check that the project have only the dependencies.


## TODO
- Stop using rust:latest, and specify a fixed version (1.52)
- Add tarpaulin to compute coverage (not compiling on Linux arm64 yet)
- Automate the building
- Optimize image size (still above 1.5GB)