kubectl apply -f manifest/kube-logging-ns.yaml


kubectl apply -f manifest/elastic-svc.yaml
kubectl apply -f manifest/pv.yaml
kubectl apply -f manifest/elastic-statefulset.yaml
kubectl apply -f manifest/kibana.yaml
kubectl apply -f manifest/fluentbit.yaml