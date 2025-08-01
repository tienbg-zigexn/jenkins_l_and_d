#!/bin/sh

DB_NAME=$1
DB_HOST=$2
DB_PASSWORD=$3
CLOUDINARY_API_KEY=$4
CLOUDINARY_API_SECRET=$5
CLOUDINARY_CLOUD_NAME=$6
CLOUDINARY_URL="cloudinary://${CLOUDINARY_API_KEY}:${CLOUDINARY_API_SECRET}@${CLOUDINARY_CLOUD_NAME}"

timestamp="$(date +%Y%m%d_%H%M%S)"
backup_file="/tmp/db-$timestamp.sql"

mysqldump -u root -h "$DB_HOST" -p"$DB_PASSWORD" "$DB_NAME" > "$backup_file"
export CLOUDINARY_URL
cld uploader upload "$backup_file" public_id="db-$timestamp"
