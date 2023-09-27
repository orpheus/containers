# Psytek V1

This is a quick-setup for EXP V1 and Strings V1. 


### Setup

1. Install docker onto your computer.

This setup is meant for macOS. I have not tested against other build systems.

2. Pull and run the images
```bash
make down
make up
make ls

```
3. Run the login script and get the access code
```bash
./setup/exp-login.sh
```
4. Replace the access code in the following script and run it
```bash
./setup/exp-create-skills.sh
```
5. Download and run the strings-v1 desktop app from the github releases


6. Open up `localhost:8083` and login with `admin:admin`

### Notes and Complication

There were a few complications getting this working.

1. Elektron apps cannot be easily dockerized because accessing a GUI via a container is not easy.
2. The exp-web vite app gets built with the server-url and port as part of the environment, so it had to be hardcoded during
the build process and pushed to docker hub.
3. Setting up initial skills for exp cannot be done in the init.sql script in this repository because we need the 
exp-go server to run its migrations first, so I included curl commands to set them up which need to be ran manually
after everything is working.
4. There were some complications still with getting the right exp-web build on docker. When I would pull the `:local` tag
from docker hub, it would still be using the prod server url, but it's working now, so I wonder if it was a caching issue.
5. The images I'm using for exp-web and strings-go are tagged with `:local` but no version. In the future, when there are more local version,
these images will no longer work and will have to be updated. Ideally I should have tagged them with `:v1.0.0-local`