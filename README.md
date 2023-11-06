# kube-mate
better living through cybernetics

## what
the purpose of this repository is to document the creation of a gitops managed kubernetes cluster built using random liberated/spare hardware.

## where
Currently the cluster hardware resides within my apartment, but hopefully will spread to a cloud provider operated by members of my computer club, as well as colocated within our club house.

As of right now the hardware consists of:
    
* 3 asus cn62 chromeboxes running https://mrchromebox.tech/ firmware

## why
the reason i find kubernetes so compelling, is it enables a homogenous interface to manage deployments of software across heterogenous hardware. i use gitops at work, but not in a particularly interesting way, so i'd like to try doing something interesting here.

an interesting use of k8s would be to create a cluster operated by myself and trusted friends, and allow anyone we trust to contribute and/or consume resources. the way k8s works should make this feasible.

## goals
as far as this arrangement goes i'd like to try to allow my friends and fellow club members to assimilate their hardware into this cluster, or offer the ability for pre-configured hardware to be colocated in their care, where datalove can be practiced freely. in short, this project is another node in a fractally complex cybernetic syndicate or cluster of compute guided by the telecommunist principles of telejuche, self-signed, self-reliant, and self-directed, we will use productive forces according to our own means, and to our own endpoints. we must embrace our nature as pirates and hackers, to take what is given freely and liberate it further.

idk how else to stir you to action, besides saying something corny like "follow the white rabbit" or "hack the planet"

# Getting Started

## Local setup

### Install Podman:
refer to the [installation guide](https://podman.io/docs/installation)

### Install Kind:

Refer to the [quick-start guide](https://kind.sigs.k8s.io/docs/user/quick-start#installation)
create a cluster: todo write command here


### ensure kubectl is configured
### try out kustomize
### kubectl apply into your cluster
```
kubectl create namespace argocd
kubectl apply -f gitops/argocd.yaml
```
[ref](https://argo-cd.readthedocs.io/en/stable/getting_started/#1-install-argo-cd)

### install argocd cli tool locally
[ref](https://argo-cd.readthedocs.io/en/stable/getting_started/#2-download-argo-cd-cli)
