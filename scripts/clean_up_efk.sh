# remove some wrong status pods
kubectl get pods --all-namespaces | egrep -i  'Evicted|Terminated|ContainerStatusUnknown' | awk '{print $2 " --namespace=" $1}' | xargs kubectl delete pod --force=true --wait=false --grace-period=0


kubectl delete -f manifest/kibana.yaml
kubectl delete -f manifest/fluentbit.yaml
kubectl delete -f manifest/elastic-statefulset.yaml
kubectl delete -f manifest/elastic-svc.yaml

kubectl delete pvc --all -n efk
kubectl delete -f manifest/pv.yaml
kubectl delete -f manifest/kube-logging-ns.yaml

sudo rm -rf /mnt/ataicmap02/CCTV_ProVision/efk/nodes/
sudo rm -rf /mnt/ataicmap02/CCTV_ProVision/efk2/nodes/
sudo rm -rf /mnt/ataicmap02/CCTV_ProVision/efk3/nodes/