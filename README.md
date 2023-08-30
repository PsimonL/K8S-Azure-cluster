# Kubernetes Cluster

## Project contains two folders:
1. local-cluster ---> Is based on local cluster infrastructure, based on hypervisor like Virtual Box, of course used K8S, Docker, Ansible, and tools from Hashicorp like Vagrant and Terraform.
2. AWS-cluster ---> Is based on Amazon Web Service as part of AWS Academy and access was granted by my university and faculty. Could be also used other provider like GCP or Azure.

### 1. The local cluster description:
- First of all, I've used Vagrant to automatically configure environmets for cluster which contains of 3 machines (1 controlplane and 2 workers, of course there should be back up controlplane as "good practices" suggest in Kubernetes documentation, but it's for pure learning purposes so I'll skip this step). 
- Originally I've wanted to use Ansible but my physical OS is Windows so, it wasn't possible due to Ansible's core design ideas, but It's good to remember that it can easily configure Windows host and use Powershell. 
- I've also used "ansible_local" provisioner for which is triggered by Vagrantfile, and by synced folder sent to certain host, runs locally. Ansible configures cluster and controlplane basic set up, downloads required dependencies and sets up cluster nodes in "Ready" status. 
- To play with Kubernetes I've used Terraform and classic yaml files for example for deployments, scalling, etc.
- There are also usefull scripts in Bash and Python.

### 2. The Cloud-based equivalent of local cluster:
- Terraform

## Helpful resources:
- a
- b
- c