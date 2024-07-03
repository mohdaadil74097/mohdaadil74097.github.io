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

**There are various platform to practice Kubernetes if your system is not compatible to work on kubernetes.**

. Kubernetes playground.

. Play with K8s.

. Play with kubernetes classroom.

**Features of Kubernetes.**

. Orchestration tool.

. Autoscaling (Vertical(Ram,Rom,CPU,etc)&Horizontal(containers,pods,etc)).

. Fault tolerance (make new container/pod when the old one is defected).

. Health monitoring of the containers.

**Note-> Scripts written in kubernetes is in the JSON or YAML language and this script is called Manifest.**

**Note-> Pod is the smalles unit on which kubernetes works.**


**Cluster -> Node -> Pod -> Container -> Application/Microservices.**

**Architecture of Kubernetes.**

In kubernetes there are two types of nodes, one is Master node and the other is Worker node.

Master node is used to controll the Worker node.

Worker node is the node where we can do tasks with the help of Master node.


**Components of Master or Controll node**

There are four parts of Controll node on which it works.

**Kube-API-server** -> This api server interacts direct with the user (i.e, we apply .yml or json manifest to kube-apiserver).

**etcd(key-value)** -> Stores metadata(data of data) and status of cluster.

**Kubescheduler** -> When users make request for the creation and management of pods,kube-scheduler is going to take action on these requests.
Handle pod creation and management.

**Controller Manager** -> It makes sure that the actual state of cluster must be equal to desired state of cluster.


**Components of Worker node**

Node is going to run on 3 important piece of software/process.

**Kubelet** -> It is atype of agent running on the node, it listens kubernetes master, uses port 10255, send success/fail reports to master.

**Container Engine** -> It works with kubelet,pulling images,start/stop containers, exposing container ports.

**Kube proxy** -> Assign IP to each pod, It is required to assign IP addresses to pods(dynamic),
runs on node and make sure that each pod get its IP or not.


**POD**

. Smallest unit in kubernetes on which we can work is called pod.
. Pod is a group of one or more than one containers that are deployed together on the host.
. A cluster is a group of master & worker node.
. Pod contains one or more tightly coupled containers.
. Pod runs on node which is controlled by master.

Note-> Generally we have to create one container in one pod.

**Installation of Kubernetes**

**PREREQUISITES**

**System Requirements:**

Two or more Linux machines (Ubuntu 20.04 or CentOS 7).

Each machine should have at least 2GB of RAM and 2 CPUs but recommended for Master have 4GB of RAM and 2CPUs.

Unique hostname, MAC address, and product_uuid for each node.

Swap disabled.

**Network Configuration:**

All nodes should be able to communicate with each other.

Ensure firewall rules allow traffic between nodes on required ports.

**Step-by-Step Installation**

**Step 1: Update and Upgrade the System**

sudo apt-get update

sudo apt-get upgrade -y

**Step 2: Install Docker**

sudo apt-get install -y docker.io

sudo systemctl enable docker

sudo systemctl start docker

**Step 3: Install kubeadm, kubelet, and kubectl**

**Add the Kubernetes APT repository:**

sudo apt-get update

sudo apt-get install -y apt-transport-https ca-certificates curl

sudo curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add.

echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

**Install the packages:**

sudo apt-get update

sudo apt-get install -y kubelet kubeadm kubectl

sudo apt-mark hold kubelet kubeadm kubectl


**Step 4: Disable Swap**

sudo swapoff -a

**Step 5: Initialize the Master Node**

On the master node, run:

sudo kubeadm init

You will get a long command started with "Kubeadm join 172.31......................" copy this command on the notepad.

**Step 6: Configure kubectl for the Master Node**

mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config

**Step 7: Install a Pod Network Add-on**
For this example, we will use Flannel:

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

**Step 8: Join Worker Nodes to the Cluster**
On each worker node, run the command copied from Step 5:

sudo kubeadm join master-node-ip:port --token token --discovery-token-ca-cert-hash sha256:hash

**Step 9: Verify the Cluster**
On the master node, run:

kubectl get nodes


**There are some basic Objects in Kubernetes which are as follows.**

(i) Pod
(ii) Service
(iii) Volume
(iv) Namespace
(v) Replicasets
(vi) Secrets
(vii) Config Maps
(viii) Deployments
(ix) Jobs
(x) Daemonsets

**Relationship between these objects.**

-> Pods manages containers.

-> Replicaset manage pods.

-> Services expose pod process to the outside world.

-> Configmaps and secrets helps you configure pods.

**Types of setup for kubernetes.**

(i) All in one single node installtion.

(ii) Single-Node etcd, Single Master and Multi Worker.

(iii) Single-Node etcd, Multi Master and Multi Worker.

**Basic Kubernetes manifest or .yml file.**

kind: Pod or Replicationcontroller(RC) or Replicaset(RS)

apiVersion: v1

metadata:
  name: pod_name

spec:
  containers:

    - name: container_name
      image: image_name
      command: ["/bin/bash", "-c", "while true; do echo; hello this is for kubernetes; sleep 2s; done"]
   
    - name: container_name
      image: image_name
      command: ["/bin/bash", "-c", "while true; do echo; hello this is for kubernetes; sleep 2s; done"]

-> press escap then : then wq and enter

It is a basic manifest or .yml file for making a pod having two containers in it.


**Commands of kubernetes to play with manifest**

**kubectl apply -f manifest_or_filename** -> For running the file or applying the file which makes pods and containers.

**kubectl get pods manifest_or_filename** -> It gives the detail of the pods.

**kubectl get nodes** -> It gives the information about the nodes.

**kubectl get nodes ip_specific_node** -> It gives the detailed info of selected node.

**kubectl describe node ip_specific_node** -> Gives detailed info about the node.

**kubectl logs -f pod_name**(only when 1pod have 1container) -> Gives the command which is given in manifest.

**kubectl logs -f pod_name -c container_name** -> Give the command which is running in that specific container.

**kubectl exec pod_name -it -c container_name -- /bin/bash** -> Used for getting into the specififc container of specific pod.

**kubectl delete -f pod_name** -> It is used to delete the pod.

**kubectl delete -f manifest_or_.yml_file** -> when we delete the manifest by using this command it automatically delete the pod and containers made by this manifest.

**Labels and Selectors**

Unlike name/UIDs, Labels do not provide uniquness, as we can expect many objects to carry the same label.

Once labels are attached to an object, we would need filters to narrow down and these filters are called label selectors.

The api supports two types of selectors -> Equality Based and Set Based.


**Equality Based** (=(equal),!=(not equal))
name: aadil
class: nodes
project: development

**Set Based** (in,notin & exists)
env in (production,dev)
env notin(team1,team2).


**kubectl label pods pod_name name=xyz** -> Used to give the label(or tag) to the pod based on their name.

**kubectl get pods --show-labels** -> Used to show the labels of the pods.

**kubectl get pods -l env=development** -> Used to list the pods which is having the label matched by given command's variable.

**kubectl get pods -l env!=development** -> Used to list the pods which are not matching the label.

**kubectl delete pods -l env=development** -> Used for deleting the pods which is having a matching label.

**kubectl get pods -l 'env in(dev,testing)'** -> Used to get the pods which are having labels like dev or testing.

**kubectl get pods -l 'env notin(dev,testing)'** -> Used to get the pods which are not having labels like dev or testing.

**kubectl get pods -l class=pods,myname=aadil** -> Used to get the pods which are having labels with key and its value.


**Node-Selector**

Node selector means to select a node to do a particular task on it, we can select it by using labels.

You can tell a pod to only be able to run on particular nodes.

We can use labels to tag nodes. 
