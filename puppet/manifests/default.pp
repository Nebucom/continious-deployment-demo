Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

# Base modules
include stdlib
include apt
# Nodejs module
include nodejs
# ...
include zypprepo
# Jenkins module
include jenkins
# Module to sent log to graylog2
include rsyslog
### to comment