FROM debian:latest

# Set a working directory
WORKDIR /app

# Setup/install 32-bit dependencies
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y \
        lib32z1 \
        libncurses5:i386 \
        libbz2-1.0:i386 \
        lib32gcc1 \
        lib32stdc++6 \
        libtinfo5:i386 \
        libcurl3-gnutls:i386 \
        wget

# Download and extract steamcmd
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar zxf steamcmd_linux.tar.gz

# Copy tf2_ds.txt and update.sh over
COPY . /app

# Expose default tf2 server port
EXPOSE 27015

# Run update.sh and let's see what happens
CMD ["./update_and_run.sh"]
