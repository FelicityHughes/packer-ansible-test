#!/bin/sh

# If user doesn't want to run in debug mode, execute Packer script now.
CLEAN_DBG_FLAG="$("echo" "${PACKER_DEBUG}" | "tr" "[:upper:]" "[:lower:]")"
if [ "${CLEAN_DBG_FLAG}" != "true" ]; then
  packer build "${PACKER_SCRIPT}"
fi

exec "${@}"
