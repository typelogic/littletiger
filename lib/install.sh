#!/bin/sh
#

# Manually install a jar file into ~/.m2/ local repository
# and then reference it in pom.xml by:
#
#   <dependency>
#       <groupId>newlogic.com</groupId>
#       <artifactId>idpass-lite-mosip</artifactId>
#       <version>1.0.0</version>
#   </dependency>

mvn install:install-file \
    -Dfile=/path/to/idpass-lite.jar \
    -DgroupId=newlogic.com \
    -DartifactId=idpass-lite-mosip \
    -Dversion=1.0.0 \
    -Dpackaging=jar
