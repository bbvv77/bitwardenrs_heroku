##################  RUNTIM IMAGE  ###################
# Create from wellbuilt bitwardenrs
# Modify start.sh to suit in heroku enviroment
from bitwardenrs/server:latest

COPY heroku_start.sh /heroku_start.sh

WORKDIR /
ENTRYPOINT ["usr/bin/dumb-init", "--"]
CMD ["/heroku_start.sh"]
