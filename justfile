set dotenv-load

default: dev

# lists available tasks
@list:
    just --list

# init project
init:
    git pull

# start the server
dev:
    fd . -e zig exercises/ | entr zig build
