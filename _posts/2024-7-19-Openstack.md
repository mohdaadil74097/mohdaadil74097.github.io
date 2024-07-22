**What is OpenStack?**

OpenStack is an open-source software platform for creating and managing cloud computing infrastructure, including compute, storage, and networking resources, in both public and private cloud environments.

**Cloud Infrastructure:** It helps build and manage cloud environments, similar to those provided by major cloud service providers like Amazon Web Services (AWS), Google Cloud Platform (GCP), and Microsoft Azure.

**Key Components of OpenStack**

**Compute (Nova):** Manages virtual machines (VMs) and other instances that run on the cloud.

**Storage:**

**Block Storage (Cinder):** Manages volumes that can be attached to VMs.

**Object Storage (Swift):** Manages large amounts of unstructured data (like files and backups).

**Networking (Neutron):** Manages networking aspects like IP addresses, subnets, and routers.

**Dashboard (Horizon):** Provides a web-based user interface to interact with OpenStack services.

**Identity Service (Keystone):** Manages authentication and authorization for all the services in OpenStack.

**Image Service (Glance):** Manages disk images for VMs.




**Commands Related to Openstack Services**

**NOVA (Compute Service)**

For Creating a VM(or instance)

 - openstack server create --flavor flavor_name --image image_name vm_name

For Listing the instances

 - openstack server list

For Deleting the instance or VM

 - openstack server delete vm_id

**NEUTRON (Networking Service)**

For Creating a Network

 - openstack network create network_name

For Creating a Subnet

 - openstack subnet create --network net_name --subnet-range sub_range sub_name

For Listing the networks

 - openstack network list

**CINDER (Block Storage Services)**

For creating a Volume

 - openstack volume create --size size_in_GB volume_name

For Attaching the volume to a VM or instance

 - openstack server add volume vm_id vol_id

For Detaching the volume from a VM or instance

 - openstack server remove volume vm_id vol_id

For listing the volume

 - openstack volume list

For Deleting the volume 

 - openstack volume delete vol_name or vol_id

**SWIFT (Object Storage Services)**

For Uploading an object

 - openstack upload container_name file_name

For Listing the object

 - openstack object list container_name

For Downloading an object

 - openstack object save container-name object-name

**GLANCE (Image Service)**

For uploading an image

 - openstack image create --file image_file --disk-format format --container-format cont_format image_nae

For listing the images

 - openstack image list

For deleting an image
 
 - openstack image delete image_id

**KEYSTONE (Identity Service)**

For creating a new user

 - openstack user create --domain default --password-prompt newuser

For adding a project

 - openstack project create --domain domain_name --description "proj_description" proj_name

For listing the project
 
 - openstack project list

For listing the user

 - openstack user list

**HORIZON (Dashboard)**

For GUI Login

 - http://your-openstack-ip/dashboard
