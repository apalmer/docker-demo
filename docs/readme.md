# What is Docker?

## Operation System Level Virtualization

## Application Level Isolation

# Why is Docker Important?

## Container metaphor

# Docker Use Cases

## (Hyper) Scaling with containers

## Dev-Test-Build-Deploy pipeline

## Infrastructure As Code

## Packaging Legacy Application

## Migration to Modern Infrastructure/Cloud

# Docker Architecture

## Docker Daemon (Host)

## Client

## Technical Components
+ Container format (libcontainer on linux)
+ Isolation (linux kernal namespaces)
    1. filesystem - layered performant isolated root file system with copy on write semantics
    2. process - isolated process environment
    3. network - isolated virtual network interfaces and ips
+ Resource Groups (linux kernal control groups)

# Docker on Linux vs Docker on Windows?

# Docker Concepts

## Docker Images

## Docker Container

## Docker Registries

## Docker Volume

# Docker Tools

## dockerfile

## docker run

## docker-compose

## swarm

## rancher

## kubernetes
