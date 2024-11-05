1. [DOK](#dok)
2. [Resources](#resources)
3. [Notezina](#notezina)
4. [Related Repo](#related-repo)
5. [Important Commands](#important-commands)

# DOK

1. Study of the UD being done here

# Resources

https://github.com/BretFisher/udemy-docker-mastery

- Refer back to this for actual sources
- Noet this one is DL locatlly in ./DOK/UDM
- Dir is 15mb , very tiny

# Notezina

1. Various hairy smelly pussies

# Related Repo

https://gitlab.com/weibdeiv/sn-dok-1-1

- This repo is going for running and interacting with docker

# Important Commands 

comms | What 
--- | --- 
`docker container run --publish 80:80 nginx --detached` | Running the `nginx` container in detached mode,if its not present locally it will be dowloaded 
`docker container stop e63` | Stopping the `nginx` container you need to provide just the first few digits of the container id and it will be removed
`docker container run --publish 80:80 --detach --name pantysmell nginx` | Here we are naming the host container as `pantysmell` the best smell
`docker container logs` | Viewing the logs of the container, which are not visible when starting in detached mode
`docker container top pantysmell` | Viewing the running processes of the container, note that you can also view these wtih `ps afx` which is the standard linux command to view processes
`docker container rm asx fsd asd` | Here we are going to remove three containers at the same time, note if they are running they wont be deleted 
`docker container rm -rf asx` | Will forefully shutdown contianer and then remove it
`docker container ls` | View all he docker containers
`docker container inspect <name>` | JSON Array of docker startuo config data
`docker container stats` | View stats of all containers