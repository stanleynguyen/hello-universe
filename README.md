# ko-demo

Demo cluster for ko.
Slides can be found [here](https://docs.google.com/presentation/d/1RPEH_FwcobhATPmFyxxxj9WpV3TawvVlMUDWitEsBC4/edit?usp=sharing)

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
- `ko publish ./mars`
- `ko ./earth`
- `ko resolve k8s/ko.yaml`
