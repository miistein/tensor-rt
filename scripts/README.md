# Helper scripts to push and pull from pod.
- clone_workspace starts server and copies workspace into local filesystem
- push_server pushes changes in local filesystem to server (so we can run the changes)
- delete pod kills server
- build docker copies changes in workspace and pushes to dockerhub. Probably want to run as admin.

## **Note:** It is hardcoded to use 1080-ti. Need to change every script except build_docker if want to use a different gpu.
## Also need to change yaml-scripts if want to change number of gpus.

Requirements:
- Installation of docker
- Konsole, or change bash scripts accordingly.o
- Ubuntu 18.04 (should work for any debian based distribution)
