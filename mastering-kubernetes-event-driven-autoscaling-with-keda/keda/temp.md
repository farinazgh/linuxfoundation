* Job kubelet: This monitors the health of the Kubelets themselves (we only have one in our test cluster).
* Job kubelet-cadvisor: This monitors the built-in cAdvisor endpoint of the Kubelets, which exposes per-container resource usage metrics for the containers running on each machine.
* Job kubernetes-apiserver: This monitors the health of the Kubernetes API Server instances (of which you also only have one).
* Endpoints for services that have the Kubernetes annotation prometheus.io/scrape: "true" set:
* * Job demo-service: This is the demo service.
* * Job kube-dns: Kubernetes's DNS server. Although you didn't set a scrape annotation on this one yourself, it comes with the right annotation out of the box when setting up a Kubernetes cluster.
* * Job prometheus: This is the Prometheus server monitoring itself.

Deploy Nginx and enable stub_status for metrics.
Deploy the Nginx Prometheus Exporter (as a sidecar) to convert Nginx’s stub_status metrics into Prometheus format.
Create a PodMonitor to tell the Prometheus Operator to scrape these metrics.
Verify metrics are available as external metrics via the Prometheus Adapter.
Create an HPA that scales based on the external metric representing Nginx request rate.
