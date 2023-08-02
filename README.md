# What is Docker?
Docker is a software platform that allows you to create, run, and manage containers. Containers are isolated environments that contain everything you need to run an application, such as code, libraries, dependencies, and configuration files. Containers are similar to virtual machines, but they are more lightweight and efficient, because they share the same operating system kernel and do not need to boot up an entire OS for each application.

# What is containerized build?
One of the benefits of using docker is that it enables you to create a containerized build for your project. A containerized build is a way of building your project inside a container, rather than on your host machine. This has several advantages, such as:

- It ensures that your project can run on any machine that has docker installed, regardless of the OS or hardware specifications. This makes it easier to deploy and distribute your project to different environments, such as development, testing, and production.  

- It avoids the problem of dependency hell, where different versions of libraries or tools can cause conflicts or errors when building or running your project. By using a containerized build, you can specify the exact versions of everything you need in your Dockerfile, and avoid any compatibility issues.  

- It improves the reproducibility and reliability of your project, because you can always rebuild your project from scratch using the same Dockerfile and source code. This eliminates any potential bugs or errors caused by changes in the host machine or external factors.

Docker official doc: https://docs.docker.com/get-started/overview/

# Illustration

```
  Containerized Build                Native Build

+----------------------+          +----------------------+
|                      |          |                      |
|   +--------------+   |          |                      |
|   |              |   |          |                      |
|   |  Application |   |          |     Application      |
|   |              |   |          |                      |
|   +--------------+   |          |                      |
|                      |          +----------------------+
|   +--------------+   |          +----------------------+
|   |              |   |          |                      |
|   | Dependencies |   |          |     Dependencies     |
|   |              |   |          |                      |
|   +--------------+   |          +----------------------+
+----------------------+          +----------------------+
+----------------------+          |                      |
|                      |          |   Host Machine OS    |
|    Docker Engine     |          |                      |
|                      |          +----------------------+
+----------------------+
+----------------------+
|                      |
|   Host Machine OS    |
|                      |
+----------------------+
```

# How to configure docker on an Ubuntu server and implement the above files from scratch

1. Install docker on the Ubuntu server by following the [official documentation](https://docs.docker.com/engine/install/ubuntu/). You may need to use `sudo` command for some steps.
2. Go to your project directory on the host system by using `cd`
3. Create a file named `Dockerfile` in the project directory and copy the content of the skeleton dockerfile into it. You can use `nano Dockerfile` or any other text editor for this.
4. Create a file named `docker-compose.yml` in the project directory and copy the content of the above skeleton docker compose config into it. You can use `nano docker-compose.yml` or any other text editor for this.
5. Build the docker image by running `docker-compose build`. This will use the arguments specified in the docker compose file to build the image based on the Ubuntu 22.04 base image and install the required tools and packages.
6. Run the docker container by running `docker compose run ysyx`. This will start the container in interactive mode with privileged access, host network mode, and environment variables and volumes specified in the docker compose file. The default command to run when starting the container is `/bin/bash`.
7. Now you should be able to build NEMU within the container

# Know issue
- GUI support hasn't been tested yet. But skeleton code is there. You can playaround with it follow the guide [here](https://www.geeksforgeeks.org/running-gui-applications-on-docker-in-linux/#)
