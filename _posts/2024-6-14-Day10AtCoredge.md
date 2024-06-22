---
 layout: post
 title: Day 6 At Coredge as a linux admin trainee
 date: 2024-6-10
---

**It's day six as a Linux Admin Trainee at Coredge and it is a great day!**

**Here is my today's tasks to do research on Docker**


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


