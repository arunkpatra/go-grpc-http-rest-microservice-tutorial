#!/bin/sh

set -e

APP_OPTS=

if [ -n "${GRPC_PORT}" ]; then
  APP_OPTS="$APP_OPTS -grpc-port=${GRPC_PORT}"
else
  GRPC_PORT="9090"
  APP_OPTS="$APP_OPTS -grpc-port=${GRPC_PORT}"
fi

if [ -n "${HTTP_PORT}" ]; then
  APP_OPTS="$APP_OPTS -http-port=${HTTP_PORT}"
else
  HTTP_PORT="8080"
  APP_OPTS="$APP_OPTS -http-port=${HTTP_PORT}"
fi

if [ -n "${DB_HOST}" ]; then
  APP_OPTS="$APP_OPTS -db-host=${DB_HOST}"
else
  DB_HOST="localhost:3306"
  APP_OPTS="$APP_OPTS -db-host=${DB_HOST}"
fi

if [ -n "${DB_USER}" ]; then
  APP_OPTS="$APP_OPTS -db-user=${DB_USER}"
fi

if [ -n "${DB_PASSWORD}" ]; then
  APP_OPTS="$APP_OPTS -db-password=${DB_PASSWORD}"
fi

if [ -n "${DB_SCHEMA}" ]; then
  APP_OPTS="$APP_OPTS -db-schema=${DB_SCHEMA}"
fi

if [ -n "${LOG_LEVEL}" ]; then
  APP_OPTS="$APP_OPTS -log-level=${LOG_LEVEL}"
else
  LOG_LEVEL="-1"
  APP_OPTS="$APP_OPTS -log-level=${LOG_LEVEL}"
fi

if [ -n "${LOG_TIME_FORMAT}" ]; then
  APP_OPTS="APP_OPTS -log-time-format=${LOG_TIME_FORMAT}"
else
  LOG_TIME_FORMAT="2006-01-02T15:04:05.999999999Z07:00"
  APP_OPTS="$APP_OPTS -log-time-format=${LOG_TIME_FORMAT}"
fi

echo Arguments passed to application : "$APP_OPTS"
/dist/main $APP_OPTS
