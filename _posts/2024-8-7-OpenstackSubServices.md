**Services in OpenStack and their Sub-Services**

**Openstack is a open source platform which is used to make private and public cloud on premise. It is working on IAAS(Infrastructure as a service)**

IAAS-> In this type of service in cloud means that you have to made a cloud from its very initial state but you have all the infrastructure related to cloud.

**Openstack versions Latest or First.**

Openstack latest version CARACAL (A long redish-brown cat)
Openstack first version AUSTIN
Openstack latest version DALMATIAN(A breed of dog) in Development phase


**NOVA (Compute)**

It is used to manage the vm like to create, to delete or to edit vm or instace.

**NEUTRON (Networking)**

It is a networking service for vm or instance. It provide connectivity and IP management.

**GLANCE (Image)**

It stores and retrieve a vm disk images. IMages can be used as a template to make new instances.

**CINDER (Block Storage Service)**

Cinder is a part of OpenStack that helps manage storage. Imagine it like a library where you can borrow books (storage volumes) and return them when you're done. It allows you to create, attach, and manage these storage volumes for your virtual machines.

**SWIFT (Object Storage Service)**

Swift is OpenStack's object storage system for storing and managing large amounts of unstructured data.

**KEYSTONE (Identity Service)**

Keystone is the identity service in OpenStack that handles authentication and authorization for users and services.

**HORIZON (Dashboard)**

Horizon is the web-based dashboard for managing OpenStack services and resources.

**SUB-SERVICES**

**Sub-Services Of NOVA**

**Nova-Compute:** Manages the lifecycle of compute instances (virtual machines) on physical hosts.

**Nova-Scheduler:** Decides which compute node should run a new instance based on various criteria.

**Nova-Conductor:** Handles database interactions and message queuing, helping to manage the state of compute instances.

**Nova-API:** Provides the API endpoints for interacting with Nova, handling requests from users and other OpenStack services.

**Sub-Services of NEUTRON**

**Neutron-Server:** The main service that handles API requests and manages network resources.

**Neutron-Plugin:** Manages networking and its integration with different backends (e.g., Open vSwitch, ML2).

**Neutron-Agent:** Various agents run on compute nodes to manage network connectivity, such as:

**L3 Agent:** Handles routing and network address translation (NAT) for virtual networks.

**DHCP Agent:** Provides dynamic IP address assignment to instances.

**Sub-Services of Glance**

**Glance-API:** Provides the API endpoints for managing and interacting with images, handling requests for image creation, retrieval, and deletion.

**Glance-Registry:** Manages metadata about images and provides this information to the API service. It handles tasks such as image registration and metadata storage.

**Glance-Store:** Manages the actual storage of image data. This component handles where and how images are stored, including interaction with various storage backends.

**Sub-Services of CINDER**

**Cinder-API:** Provides the API endpoints for interacting with Cinder, handling requests for creating, managing, and deleting block storage volumes.

**Cinder-Scheduler:** Determines which storage backend should handle a new volume request based on various criteria and policies.

**Cinder-Volume:** Manages the lifecycle of block storage volumes, including their creation, attachment to instances, and deletion. It interacts with storage backends to provision and manage volumes.

**Cinder-Backup:** Manages backups of block storage volumes, including creating and restoring backups.

**Sub-Services of SWIFT**

**Swift-Proxy:** Handles incoming API requests for storing, retrieving, and managing object data. It routes requests to the appropriate Swift storage nodes.

**Swift-Account Server:** Manages account-level metadata and information about containers within the account.

**Swift-Container Server:** Manages container-level metadata and organizes objects within containers.

**Swift-Object Server:** Stores the actual object data. It handles reading and writing object data to the storage backend.


**Sub-Services of KEYSTONE**

**Keystone-API:** Provides the API endpoints for authentication and authorization, handling requests for user login, token issuance, and role management.

**Keystone-Endpoint:** Manages the service catalog, which includes the endpoints for various OpenStack services. It helps other services find each other.

**Keystone-Worker:** Handles background tasks related to token validation and service management.


