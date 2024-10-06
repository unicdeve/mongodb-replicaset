#!/bin/bash

# Set variables
KEYFILE_NAME="mongo_rs_keyfile"
KEYFILE_PATH="${PWD}/${KEYFILE_NAME}"

# Generate the keyfile
openssl rand -base64 756 > "${KEYFILE_PATH}"

# Set permissions
chmod 0400 "${KEYFILE_PATH}"

# Get the current user and group
CURRENT_USER=$(id -un)
CURRENT_GROUP=$(id -gn)

# Change ownership to current user and group
chown "${CURRENT_USER}:${CURRENT_GROUP}" "${KEYFILE_PATH}"

echo "Keyfile created successfully at ${KEYFILE_PATH}"
echo "Owner: $(ls -l "${KEYFILE_PATH}" | awk '{print $3":"$4}')"
echo "Permissions: $(ls -l "${KEYFILE_PATH}" | awk '{print $1}')"