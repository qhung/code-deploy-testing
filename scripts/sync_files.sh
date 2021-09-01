#!/bin/bash

# ドキュメントルートにファイルを同期する（ログファイルが空で上書きされないように除外する）
rsync -auA /tmp/flowers_works_deploy/ /var/www/html/ --exclude="storage/logs/*"
