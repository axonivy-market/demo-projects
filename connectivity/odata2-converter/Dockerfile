FROM joeferner/node-java:latest

RUN git clone https://github.com/oasis-tcs/odata-openapi.git /tmp/odata-openapi
WORKDIR /tmp/odata-openapi
RUN npm install --unsafe-perm -g

RUN npm install --unsafe-perm java
RUN npm install --unsafe-perm -g xslt4node

WORKDIR /tmp/odata-openapi/tools
RUN npm install --unsafe-perm -g

