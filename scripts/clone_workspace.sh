#!/bin/bash
#start tensor rt and copy workspace

gpu="1080ti"
name_pod="$gpu-tensorrt"
alias="cd ../workspace"

kubectl create -f ../yaml-files/$name_pod.yml > /dev/null 2>&1
RESULT=$?

if [ $RESULT -eq 0 ]; then
  echo "waiting for pod to start"
  sleep 10
  echo "creating workspace in ..."
  realpath ../workspace
else
  echo "creating workspace in ..."
  realpath ../workspace
fi

mkdir -p ../workspace
kubectl cp kube-environment/$name_pod:/workspace ../workspace
konsole -e kubectl exec -it $name_pod bash & disown

cd ../workspace
clear
exec /bin/bash
