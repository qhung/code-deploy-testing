#!/bin/bash

readonly LOGS_DIR=/var/www/html/storage/logs/

# ドキュメントルートに以下のファイルがない場合、awslogsのために空ファイルを作成する
if [ ! -e "${LOGS_DIR}laravel.log" ]; then
    touch ${LOGS_DIR}laravel.log
fi
if [ ! -e "${LOGS_DIR}sql.log" ]; then
    touch ${LOGS_DIR}sql.log
fi
if [ ! -e "${LOGS_DIR}fatal.log" ]; then
    touch ${LOGS_DIR}fatal.log
fi
# 所有者と書き込み権限変更
chown apache:apache ${LOGS_DIR}*.log
chmod 664 ${LOGS_DIR}*.log
