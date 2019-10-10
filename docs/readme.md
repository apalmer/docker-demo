What is Docker?
===============

Operation System Level Virtualization
-------------------------------------

Application Level Isolation
---------------------------

Why is Docker Important?
========================

Container metaphor
------------------

Docker Use Cases
================

(Hyper) Scaling with containers
-------------------------------

Dev-Test-Build-Deploy pipeline
------------------------------

Infrastructure As Code
----------------------

Packaging Legacy Application
----------------------------

Migration to Modern Infrastructure/Cloud
----------------------------------------

Docker Architecture
===================

Host (Docker Daemon)
--------------------

Client
------

Technical Components
====================
- Container format (libcontainer on linux)
- Isolation (linux kernal namespaces)
    1. filesystem - layered performant isolated root file system with copy on write semantics
    2. process - isolated process environment
    3. network - isolated virtual network interfaces and ips
- Resource Groups (linux kernal control groups)

Docker on Linux vs Docker on Windows?
-------------------------------------

### Linux

Docker is based on core Linux kernel functionality which have been in place since approximately 2006 timeframe. 

### Windows

Docker on Windows is based on relatively new functionality implemented in the Windows OS since 2016. 
- Windows 10
- Windows Server 2016
- Windows Server 2019

Docker does not support Windows (WinForms, etc) user interfaces.

Hyper-V Containers
- Licensing of Hyper-V containers is constrained by the licensing cost of running each container in its own lightweight VM, as each VM requires a separate license, 1 host with 100 containers running on it requires 100 licenses
- Windows version of host and clients do not have to match

Windows Server Containers
- Licensing of Windows Server Containers is at the Docker host level, i.e. 1 license of for 1 host with 100 containers running on it requires 1 license
- Windows version of the host and the clients must match

Docker Concepts
===============

Docker Images
-------------

Docker Container
----------------

Docker Registries
-----------------

Docker Volumes
--------------

Orchestrators
============

docker-compose
--------------

swarm
-----

rancher
-------

kubernetes
----------

Bibliography
============

Quickstart Docker Environments:

[Play with Docker](https://labs.play-with-docker.com/)

[Azure DevTestLabs](https://azure.microsoft.com/en-us/services/devtest-lab/)

[Docker Desktop](https://www.docker.com/products/docker-desktop)