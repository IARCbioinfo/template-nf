# How to integrate automated Docker builds with CircleCI

##

The two main usages of CircleCI are `tests` of the GitHub code and `deployment` of Docker images if tests are passed.

CircleCI offers support for running Docker within build containers.  
It uses Docker to build base images, run the tests within the container and deploy the images to a registry like Docker Hub.

CircleCI can be continuously integrated with GitHub by executing the file `circle.yml` at each pushed commit.    
This is usefull to maintain a validated Dockerfile that is tested on the last version of the code.  

To integrate an automated Docker build to an existing repository on GitHub, use the following commands:

* go to the [Docker hub webpage](https://hub.docker.com/)

* create an automated build
![f1](circleCI_docker_fig/f1.png?raw=true)

* link it with GitHub
![f2](circleCI_docker_fig/f2.png?raw=true)

* choose the existing repository you want to build on
![f3](circleCI_docker_fig/f3.png?raw=true)

* change owner to `iarcbioinfo` and add a description
![f4](circleCI_docker_fig/f4.png?raw=true)

* go to `build settings` to get a trigger URL to give to CircleCI
![f5](circleCI_docker_fig/f5.png?raw=true)

* click on `activate trigger` and take the trigger URL
![f6](circleCI_docker_fig/f6.png?raw=true)

* give the trigger URL to the `deploy.sh` file which is executed after tests by CircleCI are passed, to indicate the location of the Docker image on DockerHub, [example here](https://github.com/IARCbioinfo/template-nf/blob/master/deploy.sh#L2)

* desactivate automated build on DockerHub when push, and add supplementary branches
![f7](circleCI_docker_fig/f7.png?raw=true)


## Deployment with CircleCI

* Add the following part in circle.yml to execute `deploy.sh` if tests are validated
```
deployment:
  git:
    branch: [master, dev]
    commands:
- chmod +x deploy.sh && ./deploy.sh
```

* If `deploy.sh` needs to push on your GitHub repo, add deploy keys following this [tutorial](https://circleci.com/docs/1.0/adding-read-write-deployment-key/) to let CircleCI push the changes. This will generate private and public key that you will assign respectively to you GitHub and CircleCI accounts.
