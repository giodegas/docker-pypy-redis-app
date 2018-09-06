FROM pypy:3-slim
MAINTAINER G. De Gasperis @giodegas

RUN apt-get update && apt-get install -y --no-install-recommends \
		net-tools redis-server
		
RUN pip install redis
RUN redis-server &
RUN netstat -natup

EXPOSE 6379/tcp 
