# Miro-Log

Micro Service based Http Book Store Rest API built using GOLANG, DOCKER, KUBERNETES)

</br>

</br>

## Goal

• The goal is to build Micro Service based Http Book Store Rest API, containerize it using Docker and finally orchestrate using Kubernetes

• The project was developed using GOLANG | DOCKER | KUBERNETES

</br>

</br>

## Approach:


Using Go internal libraries developed a  HTTP server 

Json marshaling and unmarshaling of books  

book rest api 

containerize it using docker work flow 

making use of docker compose to compose micro service with few other containers.

orchestrate  go micro service by scaling it horizantallly using kubernetes

finally did rolling upgrade of go micro service

</br>

## Architecture

</br>

![alt text](https://github.com/mehakhanaa/mirolog/blob/main/images/arch.png)

</br>

<br>

## Technology stack

![alt text](https://github.com/mehakhanaa/mirolog/blob/main/images/stack.png)



</br>    


<table>
<thead>
<tr>
<th>Area</th>
<th>Technology</th>
</tr>
</thead>
<tbody>
	
  <tr>
		<td> Programming Languages Used </td>
		<td> Go lang </td>
	</tr>
	<tr>
		<td> Micro Service Containerization </td>
		<td> Docker </td>
	</tr>
	<tr>
		<td>Micro Service Orchestration </td>
		<td> Kubernetes </td>
	</tr>
</tbody>
</table>



</br>

## Prerequisites

In order to build and run this showcase you need to have a couple of things installed:

The Go SDK (e.g. using Brew)

An IDE for the development, like Visual Studio Code or IntelliJ

The Docker Toolbox or native Docker, whatever you prefer


## Execution Instructions


### Building the Go microservices

$ go build

$ ./mirolog.exe

### Containerization with Docker

$ docker build -t mirolog:1.0.1 .
$ docker images
$ docker tag mirolog:1.0.1 lreimer/mirolog:1.0.1
$ docker push lreimer/mirolog:1.0.1


### Running Docker image locally

$ docker run -it -p 8080:8080 mirolog:1.0.1
$ docker run -it -e "PORT=9090" -p 9090:9090 mirolog:1.0.1
$ docker ps --all

$ docker run --name=mirolog -d -p 8080:8080 mirolog:1.0.1
$ docker ps
$ docker stats
$ docker stop
$ docker start

### Improved Containerization with Docker

$ GOOS=linux GOARCH=amd64 go build
$ docker build -t mirolog:1.0.1-alpine .
$ docker images
$ docker tag mirolog:1.0.1-alpine lreimer/mirolog:1.0.1-alpine
$ docker push lreimer/mirolog:1.0.1-alpine

### Docker Compose

$ docker-compose build
$ docker images
$ docker-compose up -d
$ docker-compose kill
$ docker-compose rm

### Kubernetes and Pods

$ kubectl get pods
$ kubectl create -f k8s-pod.yml
$ kubectl get pods
$ kubectl describe pod mirolog

$ kubectl port-forward mirolog 8080:8080

$ kubectl get pods --show-labels
$ kubectl get pods -o wide -L env
$ kubectl label pod mirolog hello=world
$ kubectl get pods -o wide -L hello
$ kubectl label pod mirolog env=prod --overwrite
$ kubectl get pods -o wide -L env

$ kubectl get ns
$ kubectl get pods --namespace kube-system
$ kubectl create -f k8s-namespace.yml
$ kubectl get ns
$ kubectl create -f k8s-pod.yml --namespace mirolog

$ kubectl delete -f k8s-pod.yml


### Kubernetes Deployments and Services

$ kubectl get services,deployments,pods

$ kubectl create -f k8s-deployment.yml
$ kubectl get deployments,pods

$ kubectl apply -f k8s-deployment.yml

$ kubectl create -f k8s-service.yml
$ kubectl get services
$ kubectl describe service mirolog

$ kubectl delete -f k8s-deployment.yml
$ kubectl delete -f k8s-service.yml


### Kubernetes Scaling and Rolling Updates

$ kubectl create -f k8s-deployment.yml --record=true

$ kubectl scale deployment mirolog --replicas=5
$ kubectl scale deployment mirolog --replicas=3

$ kubectl rollout history deployment mirolog

$ kubectl apply -f k8s-deployment.yml

$ kubectl edit deployment mirolog

$ kubectl set image deployment mirolog mirolog=mirolog:1.0.2

$ kubectl rollout history deployment mirolog
$ kubectl rollout undo deployment mirolog --to-revision=0

$ kubectl delete -f k8s-deployment.yml

</br>