#!/usr/bin/env sh

echo "[PERFORMANCE]"
if [ -n "$MAX_REQUEST_THREADS" ]; then
  echo "max_request_threads = ${MAX_REQUEST_THREADS}"
fi
if [ -n "$REQUEST_LIMIT" ]; then
  echo "request_limit = ${REQUEST_LIMIT}"
fi

echo "[BACKUPS]"
if [ -n "$BACKUP_SERVER_ON_STARTUP" ]; then
  echo "backup_server_on_startup = ${BACKUP_SERVER_ON_STARTUP}"
fi
if [ -n "$SERVER_BACKUP_INTERVAL" ]; then
  echo "server_backup_interval = ${SERVER_BACKUP_INTERVAL}"
fi
if [ -n "$MAX_SAVEGAME_BACKUPS" ]; then
  echo "max_savegame_backups = ${MAX_SAVEGAME_BACKUPS}"
fi

echo "[NETWORK]"
if [ -n "$HOST" ]; then
  echo "host = ${HOST}"
fi
if [ -n "$DISCOVERABLE" ]; then
  echo "discoverable = ${DISCOVERABLE}"
fi
if [ -n "$PORT" ]; then
  echo "port = ${PORT}"
fi

echo "[RULES]"
if [ -n "$GODMODE_FILTER" ]; then
  echo "godmode_filter = ${GODMODE_FILTER}"
fi
if [ -n "$CLAIM_DURATION" ]; then
  echo "claim_duration = ${CLAIM_DURATION}"
fi
if [ -n "$MAX_REGION_CLAIMS" ]; then
  echo "max_region_claims = ${MAX_REGION_CLAIMS}"
fi
if [ -n "$USER_PLUGINS" ]; then
  echo "user_plugins = ${USER_PLUGINS}"
fi

echo "[SECURITY]"
if [ -n "$PRIVATE" ]; then
  echo "private = ${PRIVATE}"
fi
if [ -n "$PASSWORD_ENABLED" ]; then
  echo "password_enabled = ${PASSWORD_ENABLED}"
fi
if [ -n "$PASSWORD" ]; then
  echo "password = ${PASSWORD}"
fi
if [ -n "$MAX_IP_USERS" ]; then
  echo "max_ip_users = ${MAX_IP_USERS}"
fi


echo "[INFO]"
if [ -n "$SERVER_NAME" ]; then
  echo "server_name = ${SERVER_NAME}"
fi
if [ -n "$SERVER_URL" ]; then
  echo "server_url = ${SERVER_URL}"
fi
if [ -n "$SERVER_ID" ]; then
  echo "server_id = ${SERVER_ID}"
fi
if [ -n "$SERVER_DESCRIPTION" ]; then
  echo "server_description = ${SERVER_DESCRIPTION}"
fi
