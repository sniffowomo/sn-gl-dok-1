1. [DOK](#dok)
2. [Resources](#resources)
3. [Notezina](#notezina)
4. [Related Repo](#related-repo)
5. [Fundamental Concetps](#fundamental-concetps)
6. [Important Commands](#important-commands)

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

# Fundamental Concetps

```mermaid
%%{init: {'theme':'dark', 'themeVariables':{'textColor':'#FBB454', 'nodeBorder':'#00D7FF', 'lineColor':'#00FFAB'}}}%% 

graph LR;
    A[Image]-- One <br> Image <br> containers -->B[Containers];
    
```

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
`docker container run -it` | Start a new containter interactively 
`docker container exec -it`| Run additional command in existing container
`docker container start -ai <name>` | You need these switches to get back into the server which is alredy downloaded 
`docker pull alpine` | Here the docker is pulling the image down to the machine but not running the container, this container you have to run with `docker container run --name alpine alpine`
`-p host:container` | Need to remember this standard config, when defining the ports 
`docker container port <name>` | Will list out the ports open for the container image
` docker container inspect --format '{{.NetworkSettings.IPAddress}}'` | Get the ip of the container , by default 
`docker network ls` | List out the networks in the docker