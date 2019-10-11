What is Docker?
===============
![Docker Logo](/docker-demo/images/docker-logo.png)

Docker is a technology which provides containerization of processes on Linux, MacOS and Windows operating systems. A containerized process is isolated from other processes executing on the operating system. From the point of view of the containerized process it is running 'alone' on the OS. The resources that it uses such as the filesystem, network, etc are 'virtualized' (namespaced in Linux). Docker containers are a standardized (Open Container Initiative) ergonomic wrapper around low level Operating System services that provide isolation. Hence this approach to process isolation is commonly known as Operating System Level Virtualization.

Why is Docker Important?
========================
According to [Docker Inc's](https://www.docker.com/why-docker) marketing research migrating to containers significantly improve:

- Time to Market (300%)
- Developer Productivity (1300%)
- Deployment Velocity (60%)
- IT Infrastructure Reduction (40%)
- IT Operation Efficiency (40%)

Container metaphor
------------------
[Wikipedia](https://en.wikipedia.org/wiki/Containerization)
>Containerization is a system of intermodal freight transport using intermodal containers (also called shipping containers and ISO containers). The containers have standardized dimensions. They can be loaded and unloaded, stacked, transported efficiently over long distances, and transferred from one mode of transport to another—container ships, rail transport flatcars, and semi-trailer trucks—without being opened. The handling system is completely mechanized so that all handling is done with cranes and special forklift trucks. All containers are numbered and tracked using computerized systems.

>Containerization originated several centuries ago but was not well developed or widely applied until after World War II, when it dramatically reduced the costs of transport, supported the post-war boom in international trade, and was a major element in globalization. Containerization did away with the manual sorting of most shipments and the need for warehousing. It displaced many thousands of dock workers who formerly handled break bulk cargo. Containerization also reduced congestion in ports, significantly shortened shipping time and reduced losses from damage and theft.

Docker Use Cases
================

(Hyper) Scaling with containers
-------------------------------

Dev-Test-Build-Deploy pipeline
------------------------------

Infrastructure As Code
----------------------

Packaging Legacy Applications
-----------------------------

Migration to Modern Infrastructure/Cloud
----------------------------------------

Operation System Level Virtualization
=====================================
![OS Level Virtualization](/docker-demo/images/docker-virtualization-3.png)

Docker Architecture
===================
![Docker Architecture](/docker-demo/images/docker-architecture-2.png)

Host (Docker Daemon)
--------------------
[Official Docker Documentation:](https://docs.docker.com/engine/docker-overview/)
>The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.

Client
------
[Official Docker Documentation:](https://docs.docker.com/engine/docker-overview/)
>The Docker client (docker) is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.

Technical Components
--------------------
- Container format (libcontainer on linux)
- Isolation (linux kernal namespaces)
    1. filesystem - layered performant isolated root file system with copy on write semantics
    2. process - isolated process environment
    3. network - isolated virtual network interfaces and ips
- Resource Groups (linux kernal control groups)

Docker on Linux vs Docker on Windows?
-------------------------------------

### Linux
![Docker Architectural Detail Linux](/docker-demo/images/docker-architectural-detail-linux.png)

Docker is based on core Linux kernel functionality which have been in place since approximately 2006 timeframe. 


### Windows
![Docker Architectural Detail Windows](/docker-demo/images/docker-architectural-detail-windows.png)

Docker on Windows is based on relatively new functionality implemented in the Windows OS since 2016. 
- Windows 10
- Windows Server 2016
- Windows Server 2019

Docker does not support Windows (WinForms, etc) user interfaces.

![Windows Container's vs Hyper-V Containers](/docker-demo/images/docker-container-windows-vs-hyper-v.png)

Hyper-V Containers
- Licensing of Hyper-V containers is constrained by the licensing cost of running each container in its own lightweight VM, as each VM requires a separate license, 1 host with 100 containers running on it requires 100 licenses
- Windows version of host and clients do not have to match

Windows Server Containers
- Licensing of Windows Server Containers is at the Docker host level, i.e. 1 license of for 1 host with 100 containers running on it requires 1 license
- Windows version of the host and the clients must match

![Docker on Windows](/docker-demo/images/docker-on-windows-windows-and-linux.png)

Docker on Windows supports running both Windows (OS) containers and Linux (OS) containers. There are at least 3 different ways to run Linux containers on Windows:
1. [Linux containers in a Moby VM](https://docs.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/linux-containers)
2. [Linux Containers with Hyper-V isolation](https://docs.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/linux-containers)
3. [Windows Subsystem for Linux 2](https://docs.microsoft.com/en-us/windows/wsl/wsl2-about)

Docker Concepts
===============
One of the key compelling benefits of the modern IT  containerization is it supports the paradigm shift to *Infrastructure as Code*
>Infrastructure as Code (IaC) is the management of infrastructure (networks, virtual machines, load balancers, and connection topology) in a descriptive model, using the same versioning as DevOps team uses for source code. Like the principle that the same source code generates the same binary, an IaC model generates the same environment every time it is applied. IaC is a key DevOps practice and is used in conjunction with continuous delivery.

The following key docker terms are explained in terms of familiar programming concepts.

Docker Images
-------------
![Layered Union File System](/docker-demo/images/docker-image-layers.png)

An image is analogous to a C# class definition, it describes the blueprint of how to build new objects.

Docker Container
----------------
A container is analogous to an instantiated live object based on an image (class). 

Docker Registries
-----------------
![Docker Registry](/docker-demo/images/docker-registry.png)

A registry serves a similar purpose to a source control service/server such as Github or Team Foundation Server, or a dependency package repository such as Nuget or NPM.

Docker Volumes
--------------
A volume is a directory (on linux can also be an individual file) in the container from the host which 
lives beyond the life span of the container. Somewhat similar to a mapped drive.

Composition
===========

docker-compose
--------------

Orchestrators
============

swarm
-----

kubernetes
----------

Bibliography
============

[Official Docker Documentation](https://docs.docker.com/engine/docker-overview/)

[Microsoft Documentation](https://docs.microsoft.com/en-us/virtualization/windowscontainers/)

Books
-----
[The Docker Book](https://dockerbook.com/)

[Docker on Windows - Second Edition](https://www.packtpub.com/virtualization-and-cloud/docker-windows-second-edition)

[Learn Docker - Fundamentals of Docker 18.x](https://www.packtpub.com/networking-and-servers/learn-docker-fundamentals-docker-18x)

[The Docker Ecosystem](https://washraf.gitbooks.io/the-docker-ecosystem)

Websites
--------
[A Not Very Short Introduction to Docker](https://blog.jayway.com/2015/03/21/a-not-very-short-introduction-to-docker/)

[Demystifying Containers 101: A Deep Dive Into Container Technology for Beginners](https://www.freecodecamp.org/news/demystifying-containers-101-a-deep-dive-into-container-technology-for-beginners-d7b60d8511c1/)

[What is Infrastructure as Code?](https://docs.microsoft.com/en-us/azure/devops/learn/what-is-infrastructure-as-code)

Quickstart Docker Environments
------------------------------

[Play with Docker](https://labs.play-with-docker.com/)

[Azure DevTestLabs](https://azure.microsoft.com/en-us/services/devtest-lab/)

[Docker Desktop](https://www.docker.com/products/docker-desktop)
