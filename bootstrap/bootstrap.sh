echo "installing argocd in default kubernetes context"
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "installing argo cli on local machine"
brew install argocd