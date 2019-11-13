#!/bin/bash

rm -rf workdir
mkdir -p workdir/BOOT-INF/lib
cp target/dependency/*.jar workdir/BOOT-INF/lib/
cp target/*.jar workdir/BOOT-INF/lib/
cd workdir || exit 1
wget -O app.jar https://beta-meldingsutveksling.difi.no/service/local/repositories/itest/content/no/difi/meldingsutveksling/integrasjonspunkt/2.0.7-SNAPSHOT/integrasjonspunkt-2.0.7-20191113.112710-6.jar
zip -r -0 app.jar BOOT-INF/
