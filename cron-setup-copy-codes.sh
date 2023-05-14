#!/bin/bash

# If the directories already exist, they are NOT overrwritten in the case of mkdir
mkdir -p ~/.local/etc/cron.daily ~/.var/spool/anacron

# rsync: The command for synchronizing files and directories.
# -av: Options for rsync. -a preserves the directory structure and file attributes, and -v enables verbose output for displaying progress during the copying process.
# --exclude='node_modules': The --exclude option specifies the pattern to exclude from the copy operation. In this case, we exclude any sub-folders named node_modules.
# source_directory/: The path to the source directory you want to copy. Make sure to include the trailing slash / to indicate that it's a directory.
# estination_directory/: The path to the destination directory where you want to copy the files. Again, include the trailing slash / to indicate it's a directory.
echo "rsync -av --exclude='node_modules' ~/Dropbox/Shared/Computer_code/ ~/Documents/Computer_code/" > sync-codes.sh

cp sync-codes.sh ~/.local/etc/cron.daily

chmod +x ~/.local/etc/cron.daily/sync-codes.sh

echo "SHELL=/bin/sh" > ~/.local/etc/anacrontab
echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin" >> ~/.local/etc/anacrontab
echo "1  0  cron.sync-codes    run-parts ~/.local/etc/cron.daily/" >> ~/.local/etc/anacrontab

# Performing a syntax check on anacrontab file.
anacron -T -t ~/.local/etc/anacrontab -S ~/.var/spool/anacron

echo "anacron -f -t ~/.local/etc/anacrontab -S ~/.var/spool/anacron" > ~/.profile