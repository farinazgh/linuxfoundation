140  wget https://hey-release.s3.us-east-2.amazonaws.com/hey_linux_amd64
  141  chmod +x hey_linux_amd64
  142  sudo mv hey_linux_amd64 /usr/local/bin/hey
  143  hey --help
  144  wget https://go.dev/dl/go1.21.7.linux-amd64.tar.gz
  145  sudo tar -C /usr/local -xzf go1.21.7.linux-amd64.tar.gz
  146  echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
  147  echo 'export GOPATH=$HOME/go' >> ~/.profile
  148  source ~/.profile
  149  go version
  150  clear
  151  kubectl get all --all-namespaces
  152  helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
  153  helm upgrade --install metrics-server metrics-server/metrics-server -n kube-system --set args[0]=--kubelet-insecure-tls
  154  kubectl get all --all-namespaces
  155  kubectl get pods -n kube-system
  156  kubectl describe pod metrics-server-684dd857fc-wmpqv -n kube-system
  157  kubectl get nodes -o wide
  158  kubectl describe node ip-172-31-40-206 | grep taint
  159  kubectl describe node ip-172-31-40-206 | grep Taint
  160  kubectl taint nodes NODE_NAME node-role.kubernetes.io/control-plane:NoSchedule-
  161  kubectl get nodes
  162  kubectl taint nodes ip-172-31-40-206 node-role.kubernetes.io/control-plane:NoSchedule-
  163  kubectl get pods -n kube-system
  164  kubectl get pods -n kube-system -w
  165  kubectl describe node ip-172-31-40-206 | grep Taint
  166  kubectl taint nodes ip-172-31-40-206 node.kubernetes.io/disk-pressure:NoSchedule-
  167  kubectl get pods -n kube-system -w
  168  kubectl describe node ip-172-31-40-206 | grep Taint
  169  kubectl taint nodes ip-172-31-40-206 node.kubernetes.io/disk-pressure:NoSchedule-
  170  kubectl describe node ip-172-31-40-206 | grep Taint
  171  kubectl edit deployment metrics-server -n kube-system
  172  kubectl get deployments --all-namespaces
  173  kubectl get pod --all-namespaces
  174  clear
  175  kubectl get all --all-namespaces
  176  clear
  177  df -h
  178  exit
  179  sudo growpart /dev/xvda 1
  180  sudo resize2fs /dev/xvda1
  181  df -h
  182  kubectl describe node ip-172-31-40-206 | grep Conditions -A 10
  183  history
kubectl port-forward deployment/go-http-server 8080:8080