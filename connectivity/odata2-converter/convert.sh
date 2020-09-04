#!/bin/bash

xml=metadata_edmx.xml
#uri='https://services.odata.org/V4/(S(cnbm44wtbc1v5bgrlek5lpcc))/TripPinServiceRW/$metadata'

docker build -t odata2-conv .

if [ ! -f "$xml" ]; then
  curl "$uri" > $xml
fi

echo "converting $xml ...this may takes some time!"
docker run -v $(pwd):/tmp/schema -it odata-conv-trans /opt/node-v4.2.2-linux-x64/bin/odata-openapi "/tmp/schema/$xml"

name=$(basename -s .xml "$xml")
cat $name.openapi.json
printf "\n\nDone: Feel free to inspect $name.openapi.json\n"
