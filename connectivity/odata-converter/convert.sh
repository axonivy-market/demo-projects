#!/bin/bash

xml=tripPin.xml
uri='https://services.odata.org/V4/(S(cnbm44wtbc1v5bgrlek5lpcc))/TripPinServiceRW/$metadata'

docker build -t odata-conv .

if [ ! -f "$xml" ]; then
  curl "$uri" > $xml
fi

docker run -v $(pwd):/tmp/schema -it odata-conv odata-openapi3 -p "/tmp/schema/$xml"

name=$(basename -s .xml "$xml")
cat $name.openapi3.json
