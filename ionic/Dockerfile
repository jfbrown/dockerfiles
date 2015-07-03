FROM      node

RUN       dpkg --add-architecture i386
RUN       apt-get update && apt-get install -y openjdk-7-jdk ant expect \
          libncurses5:i386 libstdc++6:i386 zlib1g:i386 lib32z1 lib32ncurses5

WORKDIR   /opt

ENV       ANDROID_SDK android-sdk_r24.1.2-linux.tgz
COPY      $ANDROID_SDK $ANDROID_SDK
RUN       tar -xf $ANDROID_SDK
RUN       rm $ANDROID_SDK
ENV       ANDROID_HOME=/opt/android-sdk-linux
ENV       PATH ${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
COPY      bootstrap.sh bootstrap.sh
RUN       android list sdk --all
RUN       echo "y" | android update sdk -u --all --filter 2,5,23

RUN       npm install -g cordova ionic bower

EXPOSE    8100

WORKDIR   /usr/src/
