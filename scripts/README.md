# Helper scripts to push and pull from pod.
- clone_workspace starts server and copies workspace into local filesystem
- push_to_server pushes changes in local filesystem to server (so we can run the changes)
- delete pod kills server
- build docker copies changes in workspace and pushes to dockerhub. Probably want to run as admin.

## **Note:** It is hardcoded to use 1080-ti. Need to change every script except build_docker if want to use a different gpu.
## Also need to change yaml-scripts if want to change number of gpus.

Requirements:

- Docker on local system.
- Konsole, or change bash scripts accordingly.
- Ubuntu 18.04 (should work for any debian based distribution).

Typical workflow:

- start with `bash clone_workspace.sh`
- push changes with `push_to_server.sh`
- if desired, save changes in docker image with `bash build_docker.sh`
(this will automatically update collectimages/tensorrt)
- if not using the server, `bash delete_pod.sh` or we will warning emails with cc to system admin
