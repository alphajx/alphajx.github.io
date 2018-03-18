#add for chkconfig
#chkconfig: 2345 70 30
#description: user defind for jekyll build start up
#processname: jekyll_build_service

#!/bin/bash
GIT_REPO=$HOME/blog/alphajx.github.io
PUBLIC_WWW=/var/www/alphajx.github.io

rm -rf /var/www/alphajx.github.io/*
nohup jekyll build --watch --source $GIT_REPO --destination $PUBLIC_WWW &
exit
