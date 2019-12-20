# ko-demo

Demo cluster for ko

## Order

- `minikube start`
- `eval $(minukube docker-env)`
- `kubectl config use-context minikube`

Without ko

- `docker build` & `docker push` for each of the images
- `k apply -f k8s/standard`

With ko

- `ko apply -f k8s/ko`

Open service

- `minikube service <service-name>`

## Some other commands

- `ko publish github.com/stanleynguyen/hello-universe/mars`
- `ko apply ./earth`
- `ko resolve k8s/ko.yaml`
