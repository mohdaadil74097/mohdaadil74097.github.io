---
 layout: post
 title: Day 10 At Coredge as a linux admin trainee
 date: 2024-6-14
---

**It's day 10 as a Linux Admin Trainee at Coredge and it is a great day!**

**Here is my today's tasks to do research on Docker**

**What is Docker?**

Docker is an open source tool which is used to  make, manage and run containers with the help of image which is on docker hub or any other registry site.
Docker is a tool which is used to create container.
Docker is written in Golang.
Before Docker, many user faces the problem that a particular code is running in the developer's system but not in User's system.

**What is container?**
When the image is in running state, it is called container.

**What does container contains?**
Everything which is needed to run an application is containned by the container.

**Note-> To run Linux containers we need Linux OS or Linux kernel and for windows we need windows kernel**

**Note-> Docker is suitable when the OS of developer and Testing teams are same.**

**Note-> Containerization virtualize the OS**

**Note-> Container creates automatically when we run images pulled from docker or any other registry**

**Note-> If we wnat to come out from the container without stopping it then we have to press Ctrl+p+q**

**Process of containerization**
Container -> Image -> Image Repository

**Commands used to manage the Docker Images**

**docker images**-> Used to show all the images pulled from the docker hub.

**docker pull image_name:tags[latest,etc]**-> Used to pull the images from docker hub.

**docker inspect image_name**-> Used to get the information about the container.

**docker ps**-> Used for showing all the running containers.

**docker ps -a**-> Used for showing all the running or stopped containers.

**docker run -d image_name:tags**-> Used for running the container in detach mode or we can say daemon mode.

**docker run -d -it image_name:tags**-> Used for running the container in deatch as well as interactive mode.

**docker search image_name**-> Used for searching the images from docker repository which is docker hub.

**docker attach container_name**-> Used to go inside the running container.

**docker exec -it containerID command**-> Used for going in the container.

**docker commit container_name image_name**-> Used for creating the images from container.

**docker build -t name . **-> For creating image from Dockerfile.

**What is a docker file How can we create it?**

Docker file is a text file with some instruction to build an image

**Steps to create Docker File**
1.Create a file named Dockerfile.

2.Open Dockerfile in any text editor.

3.After opening it we have to give some instruction in it like 

FROM baseimage

MAINTAINER NameOfTheMaintainer

RUN commandwhichyouwanttorunwhentheimageisbuild

CMD commandwhichyouwanttorunwhenanypersonsendstherequesttoitsIP


**Docker Volume**

Docker volume is a directory which is generally used to share the volumes between the containers.

We can make docker volume or share docker volume only when we create the docker container.

We can make docker volume by two types.

1-> By making a Dockerfile

FROM BaseImageName

VOLUME ["VolumeName"]

Close the file and run it by using the command.

**docker build -t(tags) ImageName(myimage) . or pathofthedirectoryofDockerfile**

After building the image run the container by using the command to create a docker volume.

**docker run -it --name containername(cont1) imagename(myimage) commname(/bin/bash)**

The above command is used to make the container run with docker volume.

Now for sharing the docker volume we have to give the command.

**docker run -it --name container2 --priviledge=true --volumes-from container1 ImageName CommName**



Now if we do the same task by using the command line mode.

**docker run -it --name container3 -v volname imagename(ubuntu) command(/bin/bash)**

The above command is used to create the docker volume with container3.

Now if we want to share this volume with container 4 then we have to give the command.

**docker run -it --name container3 --priviledge=true --volumes-from container3 ImageName CommName**


**Some basic commands related to Docker volume**

**docker volume ls** -> for listing all the docker volumes.

**docker volume create volname** -> Used for creating the docker volume.

**docker volume rm volname** -> Used for removing the docker volume.

**docker volume prune** -> Used for removing all unused docker volumes.

**docker volume inspect volname** -> Used for inspecting the volume.


**Docker Networking**

A Docker network is basically a connection between one or more containers.

**Types of Network in Docker**

1-> Bridge Network

2-> Host Network

3-> Overlay Network

4-> Macvlan Network

5-> None Network

**Commands related to Docker Network**

**docker run -it -d --name conName --network netName imName comName** -> Used for assigning the network as well as run the container.

**docker run -it -d --name cont3 --network AadilNetwork ubuntu bash** -> This command is used to assign the AadilNetwork to the container name cont3 and the image name is ubuntu.

**docker inspect cont_name** -> Used for inspecting the container.

**docker exec -it cont_name bash**-> To go inside the container.

**docker network create network_name**-> Used to create a new network.

**docker network ls**-> Used to list the network.

**docker network rm AadilNetwork**-> Used for removing the Network.
































