# hbm-dev-docker-image
This image is used for developing a Python application. Following additional libraries/frameworks are included:  
- _pylint_ (https://pypi.org/project/pylint/)  
- _numpy_ (https://numpy.org/)  
- _imutils_ (https://pypi.org/project/imutils/)  
- _scikit-image_ (https://scikit-image.org/)  
- _opencv_ (https://pypi.org/project/opencv-python/)  

The Docker image uses the _root_ user by default, but adds a user called _docker_. This way, a non-root user is available when opening the docker image, for instance, inside a Visual Studio Code using a _.devcontainer/devcontainer.json_ file:
```json
{
	"name": "Debian Python Development",
	"image": "markus2101/hbm-dev:latest",
	"containerUser": "docker"
}
```  

Latest build on DockerHub: https://hub.docker.com/r/markus2101/hbm-dev
