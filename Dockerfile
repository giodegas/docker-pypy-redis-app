FROM pypy:2-slim
MAINTAINER G. De Gasperis @giodegas

RUN apt-get update && apt-get install -y --no-install-recommends \
		net-tools redis-server
		
RUN pip install redis
RUN /etc/init.d/redis-server start
RUN netstat -natup|grep LIST

EXPOSE 6379/tcp 
