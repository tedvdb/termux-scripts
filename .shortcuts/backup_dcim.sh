#!/bin/bash
set -xe

(trap 'kill 0' SIGINT; \
  rsync --progress --partial -av --no-compress /storage/emulated/0/DCIM/Camera ted@brinksfiles:~/note9backup/internal_dcim & \
  rsync --progress --partial -av --no-compress /storage/1B21-8F9D/DCIM/Camera ted@brinksfiles:~/note9backup/external_dcim )

termux-notification -t "Backup done!" -c "Rsync backup to brinksfiles completed sucessfully."
