`kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.5.1/deploy/longhorn.yaml`


https://longhorn.io/docs/1.5.1/deploy/accessing-the-ui/longhorn-ingress/

$ kubectl -n longhorn-system create secret generic basic-auth --from-file=auth

$ kubectl -n longhorn-system apply -f longhorn-ingress.yaml