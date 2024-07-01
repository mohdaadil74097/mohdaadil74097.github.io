---
 layout: post
 title: KUBERNETES
 date: 2024-7-1
---

**Here is my today's tasks to do research on Kubernetes**

**What is kubernetes?**

Kubernetes is an open source container management tool which automates container deployment, container scaling and load balancing.

Kubernetes is an Orchestration tool. It is developed by google and written in golang language.

It is generally used to manage the containers that is why it is also called container management tool.

The old name of kubernetes is **Project Seven**

Kubernetes denotes by K8s.

**What is the difference between monolithic and micro-services applications?**

**Monolithic Applications** -> Application whose all types of code written on a single server and on single database, these types of applications called Monolithic applications.
**Eg-> Whole facebook code written on single server and single Database.**

**Micro-Services Applications** -> Application whose code is written in the form of small-small services and stores on different databases, these type of applications called micro-services applications.
**Eg-> Login(special server and db for this pages) -> posts (also have special server and db for it),etc.**

**Note->We can access Micro-Services with the help of API-Gateways.**

**What is API-Gateway?**

An API-Gateway is like a front door for all the requests that come to your application from clients.
It manages and simplifies how clients interact with the backend services of an application.

**There are various platform to practice Kubernetes if your system is not compatible to work on kubernetes.

. Kubernetes playground.

. Play with K8s.

. Play with kubernetes classroom.**

**Features of Kubernetes.

. Orchestration tool.

. Autoscaling (Vertical(Ram,Rom,CPU,etc)&Horizontal(containers,pods,etc)).

. Fault tolerance (make new container/pod when the old one is defected).

. Health monitoring of the containers.**

**Note-> Scripts written in kubernetes is in the JSON or YAML language and this script is called Manifest.**

**Note-> Pod is the smalles unit on which kubernetes works.**

