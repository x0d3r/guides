## Rust cmds

```shell
## rustup 
rustup update stable
rustc --version
rustc 

## cargo
cargo new hello_world --bin
cargo init [--bin --lib]

cd hello_world
cargo build [--release]
cargo run
cargo check
cargo update
cargo clean

## crates dependencies
-- Edit Cargo.toml and add crates
vim Cargo.toml

[package]
name = "hello_world"
version = "1.1.0"
authors = ["Your Name <you@example.com>"]
edition = "2018"

[dependencies]
actix-web = "1.0.0"

```
