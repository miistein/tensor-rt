# run with sudo if haven't configured user
docker pull collectimages/tensorrt
docker build -t collectimages/tensorrt .
docker push collectimages/tensorrt
