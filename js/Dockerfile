FROM      node

RUN       npm install -g bower browserify
RUN       useradd -ms /bin/bash devuser
RUN       chown devuser: /usr/src

USER      devuser
WORKDIR   /usr/src
