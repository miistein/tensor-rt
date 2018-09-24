gpu="1080ti"
name_pod="$gpu-tensorrt"

(kubectl delete pod $name_pod > /dev/null 2>&1) & disown
sleep 1
kubectl get pods
