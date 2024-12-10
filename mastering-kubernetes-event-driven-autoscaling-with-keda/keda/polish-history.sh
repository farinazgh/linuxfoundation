  247  tar cvf httpserver/ httpserver.tar
  248  gzip httpserver/
  249  ls
  250  cd httpserver/
  251  mv Dockerfile Dockerfile.old
  252  vi Dockerfile
  253  rm Dockerfile.old
  254  docker build -t polarisfgh/go-http-server:lab-03 .
  255  docker push polarisfgh/go-http-server:lab-03
  256  cd ..
  257  zip -r my_directory.zi httpserver/
  258  sudo apt install zip
  259  zip -r my_directory.zi httpserver/
  260  ls
  261  ls -lrt
  262  mv my_directory.zi my_directory.zip
  263  ls
  264  aws s3 cp my_directory.zip s3://farinaz-first-bucket/
  265  pwd
  266  ls
  267  cd httpserver/
  268  ls
  269  cat Dockerfile
  270  history
  271  docker build -t polarisfgh/go-http-server:lyra .
  272  mv Dockerfile Dockerfile.old
  273  vi Dockerfile
  274  docker build -t polarisfgh/go-http-server:lyra .
  275  mv Dockerfile Dockerfile.old
  276  vi Dockerfile
  277  docker build -t polarisfgh/go-http-server:lyra .
  278  docker push polarisfgh/go-http-server:lyra
  279  pwd
  280  ls
  281  cd httpserver/
  282  ls -lrt
  283  cat Dockerfile
  284  cat main.go
  285  clear
  286  kubectl get all --all-namespaces
  287  kubectl get namespaces
  288  kubectl delete namespace kong
  289  kubectl get namespaces
  290  clear
  291  pwd
  292  ls -lrt
  293  rm my_directory.zip
  294  ls
  295  cd httpserver/
  296  ls
  297  ls -lrt
  298  cat main.go
  299  cat Dockerfile
  300  cat main.go
  301  ls -lrt
  302  rm Dockerfile.old
  303  mv Dockerfile Dockerfile.old
  304  vi Dockerfile
  305  go mod tidy
  306  ls
  307  rm Dockerfile.old
  308  docker build -t polarisfgh/luna-http-server:luna .
  309  docker push polarisfgh/luna-http-server:luna
  310  ls
  311  cd ..
  312  ls
  313  rm deployment.yaml
  314  vi deployment.yaml
  315  kubectl apply -f deployment.yaml
  316  clear
  317  kubectl get all
  318  kubectl delete deployment go-http-server
  319  clear
  320  kubectl get all
  321  kubectl describe pod luna-http-server-6bbf9f6f5c-zdsk
  322  kubectl logs luna-http-server-6bbf9f6f5c-zdskt
  323  kubectl get nodes -o wide
  324  uname -m
  325  GOOS=linux GOARCH=amd64 go build -o httpserver .
  326  pwd
  327  cd httpserver/
  328  GOOS=linux GOARCH=amd64 go build -o httpserver .
  329  ./httpserver
  330  chmod +x httpserver
  331  ./httpserver
  332  GOOS=linux GOARCH=amd64 go build -o httpserver .
  333  file httpserver
  334  httpserver: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, ...
  335  ./httpserver
  336  file httpserver
  337  ls
  338  cat main.go
  339  GOOS=linux GOARCH=amd64 go build -o httpserver main.go
  340  file httpserver
  341  ls -lrt
  342  rm -f httpserver
  343  GOOS=linux GOARCH=amd64 go build -o httpserver main.go
  344  file httpserver
  345  rm -f httpserver
  346  go version
  347  vi test.go
  348  GOOS=linux GOARCH=amd64 go build -o testapp test.go
  349  file testapp
  350  ls -al
  351  rm testapp
  352  rm test.go
  353  ls
  354  GOOS=linux GOARCH=amd64 go build -o httpserver main.go
  355  ls
  356  file httpserver
  357  alias go
  358  which go
  359  GOOS=linux GOARCH=amd64 go build -o myserver main.go
  360  ls
  361  cat main.go
  362  ls
  363  vi main.go
  364  rm -f httpserver
  365  GOOS=linux GOARCH=amd64 go build -o myserver main.go
  366  ls
  367  file myserver
  368  ./myserver
  369  curl http://localhost:8080
  370  curl http://localhost:8080/metrics
  371  ./myserver
  372  ./myserver &
  373  curl http://localhost:8080
  374  curl http://localhost:8080/metrics
  375  ls
  376  mv Dockerfile Dockerfile.old
  377  vi Dockerfile
  378  docker build -t polarisfgh/myserver:latest .
  379  docker run -p 8080:8080 your-dockerhub-username/myserver:latest
  380  docker run -p 8080:8080 polarisfgh/myserver:latest
  381  kill -9 85128
  382  docker run -p 8080:8080 polarisfgh/myserver:latest
  383  docker push polarisfgh/myserver:latest
  384  ls
  385  kubectl get deployments
  386  kubectl delete deployment luna-http-server
  387  kubectl get all
  388  kubectl delete dervice luna-http-server
  389  kubectl delete seervice luna-http-server
  390  kubectl delete service luna-http-server
  391  clear
  392  kubectl get all
  393  ls
  394  rm Dockerfile.old
  395  vi deployment.yaml
  396  kubectl apply -f deployment.yaml
  397  clear
  398  kubectl get all
  399  history