# docker-tf2

docker-tf2 is a simple Dockerfile that aims to quickly get a Team Fortress 2
server up and running on any machine that supports Docker. The main advantage
of this is having a consistent environment across a range of hosts, so you
don't have to worry about immediately segfaulting with an empty debug log like
I was on Arch Linux. No hassle, just clone the repo, run the commands, and
you're done.

## Usage
Running this is done pretty similarly to how you'd run just about anything else
in Docker.
Build it first:
```
docker build -t docker-tf2 .
```
Then run it:
```
docker run -it -v docker-tf2-vol:/app docker-tf2
```
`-it` creates an interactive session so you can monitor the server log and
run commands, and `-v docker-tf2-vol:/app` gives you persistence outside of 
the container (i.e. you won't lose everything when you kill the container). Feel
free to drop this option if you want a "temporary" server of sorts that'll be
long forgotten after you kill the docker process.

The server will use the settings that are laid out in `server.cfg` and 
`tf2_ds.txt`; feel free to change these to your liking.

If it's your first time running the server, you'll need to wait as about 8GB 
of content is downloaded.

## Future
- Automatically install SourceMod

