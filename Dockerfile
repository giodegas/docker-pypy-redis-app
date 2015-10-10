FROM pypy:2-slim
MAINTAINER G. De Gasperis @giodegas

RUN apt-get update && apt-get install -y --no-install-recommends \
		redis-server
		&& rm -rf /var/lib/apt/lists/*
		
RUN pip install redis

EXPOSE 6379/tcp 
