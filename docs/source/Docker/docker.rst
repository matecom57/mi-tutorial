Syntax and usage of the Docker build command
============================================

https://www.cherryservers.com/blog/docker-build-command

The docker build command is run with the following syntax:

docker build [OPTIONS] PATH | URL

When working with the Docker build command, there are several commonly used options and flags that provide flexibility and customization to the build process. Let's explore some of these options and flags with examples:

-t or --tag: This option allows you to assign a tag to the built image for easy referencing and versioning. In this example, the built image will be tagged as "sampleapp" with the "latest" version.


Example usage: docker build -t sampleapp:latest .

-f or -file: This option can be used to specify a different Dockerfile name or location if it is not named "Dockerfile." In this example, the image will be built using the Dockerfile named "ProductionDockerfile" in the current directory.

Example usage: docker build -f ProductionDockerfile .

--build-arg: The --build-arg option allows you to pass build-time variables to the Dockerfile, enabling dynamic customization during the build process. This command passes a build-time variable named "VERSION" with the value "10" to the Dockerfile.

Example usage: docker build --build-arg VERSION=10.

--no-cache: This option can be used to force Docker to ignore the cached layers and perform a fresh build. This command forces Docker to ignore the cache and perform a fresh build using all layers.

Example usage: docker build --no-cache .

--target: If your Dockerfile has multiple build stages defined using the FROM instruction, the --target option allows you to specify a specific target stage to build. In this example, only the stage defined as "mytarget" in the Dockerfile will be built.



Example usage: docker build --target mytarget .

--quiet or -q: The --quiet option suppresses the build output, displaying only the final image ID after the image has been built successfully. This command performs the build silently, showing only the resulting image ID.

Example usage: docker build --quiet .

These are just a few commonly used options, and the Docker build provides more options and flags that you can explore in the official Docker documentation.

How does Docker build work?
The Docker build process creates a Docker image based on instructions in a Dockerfile. This file contains build instructions like copying files, installing dependencies, running commands, and more.

When you run docker build, the Docker daemon reads the Dockerfile and executes each instruction in order, generating a layered image. Each instruction creates a lightweight, read-only filesystem snapshot known as a layer. Docker caches unchanged layers to speed up subsequent builds. Layers that haven't changed since a previous build are cached and reused, avoiding the need to rebuild those layers and significantly improving build times.

Once all instructions are executed, Docker creates the final image containing the application and its dependencies, ready to be used to run containers.

#



To build a Docker image from Dockerfile, let's see the docker build command in action. In the below steps, we will build a simple Docker image, a web server to serve out a web page through installation. You're going to be building, running, and testing it on your local computer.

#Step 1 - Create a working directory
Create a directory or folder to use for this demonstration ("docker-demo" is used here as the directory) and navigate to that directory by running the following commands in your terminal:

mkdir docker-demo
cd docker-demo


Create a file called "index.html" in the directory and add the following content to it:

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Simple App</title>
  </head>
  <body>
    <h1>Hello World</h1>
    <p>This is running in a docker container</p>
  </body>
</html>


Step 2 - Select a base image
Next, select a suitable base image from Docker Hub or a local repository. The base image forms the foundation of your custom image and contains the operating system and essential dependencies. Almost every single image for Docker is based on another image. For this demonstration, you'd be using nginx:stable-alpine3.17-slim as the base image.

Step 3 - Create a Dockerfile
Now create a file named "Dockerfile". This file will define the build instructions for your image. By default, when you run the docker build command, docker searches for the Dockerfile.

Step 4 - Add build instructions to the Dockerfile
Open the Dockerfile in a text editor and add the following lines:

FROM nginx:stable-alpine3.17-slim
COPY index.html /usr/share/nginx/html

EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]

The instruction above will create a Docker image that serves the provided "index.html" file through the Nginx web server when a container is launched based on that image.

The FROM instruction initializes a new build stage and sets the base image for subsequent instructions. The COPY instruction copies files or directories (usually the source code) from the source to the specified location inside the image. It copies the file to the "/usr/share/nginx/html" directory, which is the default location for serving static files in the Nginx web server. The main purpose of the CMD instruction is to provide defaults for executing containers. The instructions defined in Dockerfiles differ based on the kind of image you're trying to build.

#Step 5 - Build the image using the Docker build command
Before building the Docker image, confirm that you have Docker installed by running the docker --version command.


To build your container, make sure you're in the folder where you have your Dockerfile and run the following command in the terminal:

docker build -t sampleapp:v1 .


This command initiates the Docker build process to create a Docker image based on the instructions specified in the Dockerfile located in the current directory (.)

The -t flag specifies a tag for the image, allowing you to assign a name and version to it. In this case, the image will be tagged as "sampleapp" with the version "v1" providing a descriptive identifier for the image, making it easier to reference and manage.

You should see the build process start and an output indicating that it has finished when it is done.

Also read: How to run Docker on bare metal cloud

#Step 6 - Verify the built Docker image
After a successful build, verify the image by running the docker images command to list all the available images on your Docker host. You should see your newly created image listed with its assigned tag and other relevant details, ready to be used for running containers or pushing to a container registry for distribution.


Step 7 - Run the Docker image
Next, run the Docker image as a container using:

docker run -p 8080:80 sampleapp:v1

This command tells Docker to run the sampleapp container. The -p flag specifies the port mapping, which maps a port from the host machine to a port inside the container. Here, you are mapping port 8080 of the host machine to port 80 of the container. You can modify the host port as per your preference. Ensure you specify the image name and version you used when building the image.



Step 8 - Access the application
With the container running, you can go ahead to access the application. Open a web browser and navigate to localhost:8080 and you should see the sample web page displayed on your web browser.



How to optimize and quicken the Docker build process using a .dockerignore file
The process of building an image for the first time using docker build is time-consuming. Not every file in your application code package is crucial. Some files are needed while others have to be ignored by the Docker daemon during the build process to save time. The main problem is that, when Docker builds an image, it sends everything in the build context (by default, the current directory) to the Docker daemon. Fortunately, you can control which files get sent by using a .dockerignore file. This file tells Docker not to include the specified directories and files when sending the build context to the Docker daemon.

Below are some of the files you should add to the .dockerignore file:

Version control directories.
Dependency directories if you’re installing dependencies during the build.
Local configuration files and other environment-specific settings.
Build artifacts or compiled files that aren’t needed in the image.

Below is an example of a .dockerignore file:

# Exclude version control directories
.git
.svn

# Exclude Node.js dependencies (assuming you install them during build)
node_modules

# Exclude Python cache and compiled files
__pycache__
*.pyc
*.pyo

# Exclude build and distribution directories
build
dist

# Exclude log files and temporary directories
*.log
tmp/

# Exclude OS-specific files
.DS_Store
Thumbs.db

You can adjust it based on the specifics of your project. This helps reduce the build context size, speeds up the build process, and avoids including potentially sensitive or unnecessary files in your image.

#Best practices for optimizing Docker builds
Here are some best practices you can follow to optimize your Docker build and ensure efficiency:

Ensure you keep your Dockerfiles concise, organized, and easy to maintain. Break down complex tasks into smaller, reusable instructions, thereby improving readability, and simplifying troubleshooting and updates.
Use lightweight images as base images in your Dockerfile and ensure you only install the essential things in the image. Smaller images not only improve performance but also reduce resource consumption during deployment.
Use .dockerignore to ensure you're only adding the files you need.
Take advantage of Docker's caching mechanism to speed up subsequent builds. Utilize layers that don't change frequently or use the --no-cache=true flag when necessary. This can be especially useful for large projects.
Consider using multi-stage builds when applicable. They allow you to separate build dependencies from the final runtime image, resulting in smaller image sizes.
These practices will enhance the efficiency of your Docker builds, resulting in faster build times, smaller image sizes, improved performance, and reliable image creation. You can read more on docker build best practices from the documentation.

#Troubleshooting Docker build command issues
Even with the best practices, you might encounter occasional hiccups during the Docker build process. Here are some common issues and their potential solutions:

Error: "Unable to find the Dockerfile": Ensure that you are running the docker build command from the directory containing the Dockerfile.
Build failures or unexpected results: Check the Dockerfile syntax and ensure all dependencies and commands are correctly specified. Review the build logs and error messages and consider using the --no-cache option to perform a clean build.
Also read: How Docker stores images

#Conclusion
Docker build command empowers developers to turn your applications into portable containers that can be run anywhere. In this guide, we looked at how the Docker build process works, the Docker build syntax and best practices, and how to build a Docker image from Dockerfile step-by-step. You should better understand the Docker build command and how to use it and utilize this knowledge to build more custom Docker images to make your applications portable.



Thanks for learning with Cherry Servers! Our flexible cloud infrastructure gives open source developers full control, stable workloads, and free technical support 24/7. We offer dedicated servers, virtual servers, GPU servers, customized services, and more.



