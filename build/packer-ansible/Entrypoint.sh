#!/bin/sh

packer build "${PACKER_SCRIPT}"
exec "${@}"
