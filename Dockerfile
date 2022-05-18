FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

### install cups

RUN apt-get update && apt-get install -y --no-install-recommends \
  cups \
  printer-driver-gutenprint \
  && rm -rf /var/lib/apt/lists/*

CMD [ "cupsd", "-f" ]
