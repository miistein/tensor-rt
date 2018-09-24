gpu="1080ti"
name_pod="$gpu-tensorrt"

kubectl cp ../workspace $name_pod:/
konsole & disown
kubectl exec -it $name_pod bash
