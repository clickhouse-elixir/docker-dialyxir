#!/bin/sh

generate() {
  version=$1
  cat <<EOF
# -*- mode: dockerfile -*-
FROM elixir${version+:$version}

RUN mix local.hex --force && mix archive.install hex dialyxir --force && mix dialyzer --plt
EOF
}

generate "$1"
