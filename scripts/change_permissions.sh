#!/bin/bash
setfacl -Rdn -m group:apache:rwx /tmp/flowers_works_deploy/storage
setfacl -Rn -m group:apache:rwx /tmp/flowers_works_deploy/storage
setfacl -Rdn -m group:Engineer:rwx /tmp/flowers_works_deploy/storage
setfacl -Rn -m group:Engineer:rwx /tmp/flowers_works_deploy/storage

setfacl -Rdn -m group:apache:rwx /tmp/flowers_works_deploy/bootstrap/cache
setfacl -Rn -m group:apache:rwx /tmp/flowers_works_deploy/bootstrap/cache

chmod 775 -R /tmp/flowers_works_deploy/storage
chmod 775 -R /tmp/flowers_works_deploy/bootstrap/cache
