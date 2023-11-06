create custom pxe/iso image: https://coreos.github.io/coreos-installer/customizing-install/#creating-customized-iso-and-pxe-images

used install.ign to generate iso to generate fcos-config.yaml, that then loads guado.ign


`kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.5.1/deploy/longhorn.yaml`


https://longhorn.io/docs/1.5.1/deploy/accessing-the-ui/longhorn-ingress/

$ kubectl -n longhorn-system create secret generic basic-auth --from-file=auth

$ kubectl -n longhorn-system apply -f longhorn-ingress.yaml


# argocd installation
https://argo-cd.readthedocs.io/en/stable/
`kubectl create namespace argocd`
`kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`

https://argo-cd.readthedocs.io/en/stable/getting_started/