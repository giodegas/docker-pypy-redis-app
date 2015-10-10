FROM pypy:2-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
		redis 
		&& rm -rf /var/lib/apt/lists/*
		
RUN pip install redis

EXPOSE 6379/tcp 
