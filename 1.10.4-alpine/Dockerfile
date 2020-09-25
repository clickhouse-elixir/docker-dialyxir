# -*- mode: dockerfile -*-
FROM elixir:1.10.4-alpine

RUN mix local.hex --force && mix archive.install hex dialyxir --force && mix dialyzer --plt
