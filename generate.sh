#!/bin/sh
COUNT=$1
find . -maxdepth 1 -type d -name 'child*' | grep -v 'child1$' | xargs rm -rf
MODULES=$(for i in `seq 2 $COUNT`; do cp -a child1 child$i; sed -i "s/>child1</>child$i</" child$i/pom.xml; echo "<module>child$i</module>"; done); (cat pom-start; echo $MODULES; cat pom-end) > pom.xml
