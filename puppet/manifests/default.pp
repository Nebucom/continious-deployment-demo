Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

# Base modules
include stdlib
include apt
# Nodejs module
include nodejs
# Jenkins module
#include jenkins
#include zypprepo
# Module to sent log to graylog2
include rsyslog
### to comment