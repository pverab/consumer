# Project Setup

## Prerequisites
- Java 17
- Maven
- Docker
- Kubernetes CLI (kubectl)

## Build the Project

To build the project, run the following command:

```sh
mvn clean package
```

## Build the Docker Image

To build the Docker image, use the following command:
```sh
docker build -t consumer:latest .
```

## Deploy to Kubernetes

To deploy the application to Kubernetes, apply the following configurations:

### Consumer
```sh
kubectl apply -f kubernetes/consumer/deployment.yaml
kubectl apply -f kubernetes/consumer/service.yaml
```

## View logs
```sh
kubectl get pods | grep consumer
```

```sh
kubectl logs -f <pod-name>
```

## Clean up
```sh
kubectl delete -f kubernetes/consumer/deployment.yaml
kubectl delete -f kubernetes/consumer/service.yaml
```

# Delete the Docker Image
```sh
docker rmi consumer:latest
```