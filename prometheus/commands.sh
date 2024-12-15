kubectl get pods --all-namespaces
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install k8s-prometheus-adapter prometheus-community/prometheus-adapter --set prometheus.url=http://prometheus-operator-kube-p-prometheus.monitoring.svc:9090 --namespace monitoring --create-namespace

sudo growpart /dev/xvda 1
sudo resize2fs /dev/xvda1
df -h
lsblk
df -T
kubectl get nodes
kubectl apply -f nginx-deployment.yaml
kubectl get pods
vi nginx-pod-monitor.yaml
kubectl apply -f nginx-pod-monitor.yaml
kubectl get pods
kubectl get podmonitors
kubectl describe podmonitor nginx-podmonitor
kubectl get pod -n monitoring | grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n monitoring
kubectl get all -n monitoring
kubectl get crd podmonitors.monitoring.coreos.com
kubectl get prometheus -n monitoring -o yaml | grep podMonitorSelector
kubectl edit podmonitor nginx-podmonitor
kubectl get podmonitors  --show-label
kubectl get configmaps -n monitoring | grep adapter
helm list -A | grep adapter
kubectl get deployments --all-namespaces | grep adapter
kubectl get all -n monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus-adapter prometheus-community/prometheus-adapter --namespace monitoring --create-namespace
kubectl get all -n monitoring
kubectl get --raw "/apis/external.metrics.k8s.io/v1beta1" | jq
kubectl exec -it nginx-c5887458-55mbv -c nginx-exporter -- curl http://127.0.0.1/nginx_status
kubectl edit configmap nginx-conf
kubectl exec -it nginx-c5887458-55mbv -c nginx -- nginx -s reload
kubectl exec -it nginx-c5887458-55mbv -c nginx -- cat /etc/nginx/nginx.conf
kubectl exec -it nginx-c5887458-xwcdz -c nginx -- ls -l /etc/nginx/nginx.conf
kubectl exec -it nginx-c5887458-xwcdz -c nginx -- curl http://127.0.0.1/nginx_status
kubectl expose deployment nginx --type=NodePort --name=nginx
kubectl get services -o wide
kubectl get configmap prometheus-config -n monitoring -o yaml

kubectl edit configmap prometheus-adapter -n monitoring
kubectl rollout restart deployment prometheus-adapter -n monitoring
kubectl get --raw "/apis/external.metrics.k8s.io/v1beta1" | jq
kubectl get configmap prometheus-adapter -n monitoring -o yaml

#http://34.248.51.251:30106/metrics
#nginx exporter
#http://34.248.51.251:30287/