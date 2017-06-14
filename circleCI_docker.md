# How to integrate automated Docker builds with CircleCI

##

The two main usages of CircleCI are `tests` of the GitHub code and `deployment` of Docker images if tests ar passed.

CircleCI offers support for running Docker within build containers.  
It uses Docker to build base images, run the tests within the container and deploy the images to a registry like Docker Hub.

CircleCI can be continuously integrated with GitHub by executing the file `circle.yml` at each pushed commit.    
This is usefull to maintain a validated Dockerfile that is tested on the last version of the code.  

To integrate an automated Docker build to an existing repository on GitHub, use the following commands:

* go to the [Docker hub webpage](https://hub.docker.com/)

* create an automated build

* link it with GitHub

* choose the existing repository you want to build on

* change owner to `iarcbioinfo` and add a description

* go to `build settings` to get a trigger URL to give to CircleCI

* click on `activate trigger` and take the trigger URL

* give the trigger URL to the `deploy.sh` file which is executed after tests by CircleCI are passed, to indicate the location of the Docker image on DockerHub, [example here](https://github.com/IARCbioinfo/template-nf/blob/master/deploy.sh#L2)