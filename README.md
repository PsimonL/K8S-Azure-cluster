# Kubernetes Cluster

## Project contains two folders:
1. local-cluster ---> Is based on local cluster infrastructure, based on hypervisor like Virtual Box, of course used K8S, Docker, Ansible, and tools from Hashicorp like Vagrant and Terraform.
2*. AWS-cluster ---> Is based on Amazon Web Service as part of AWS Academy and access was granted by my university and faculty. Could be also used other provider like GCP or Azure.
Cloud provider is available at: https://github.com/PsimonL/K8S-AWS-cluster 

### The local cluster description:  
I've used VirtualBox as my hypervisor, but analogically VMWare, Hyper-V should also work as well.  
- First of all, I've used Vagrant to automatically configure environmets for cluster which contains of 3 machines (1 controlplane and 2 workers, of course there should be back up controlplane as "good practices" suggest in Kubernetes documentation, but it's for pure learning purposes so I'll skip this step). 
- Originally I've wanted to use Ansible but my physical OS is Windows so, it wasn't possible due to Ansible's core design ideas, but It's good to remember that it can easily configure Windows host and use Powershell. 
- I've also used "ansible_local" provisioner for which is triggered by Vagrantfile, and by synced folder sent to certain host, runs locally. Ansible configures cluster and controlplane basic set up, downloads required dependencies and sets up cluster nodes in "Ready" status. 
- To play with Kubernetes I've used Terraform and classic yaml files for example for deployments, scalling, etc.
- There are also usefull scripts in Bash and Python.


## Helpful resources and links:
- [link-1](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)
- [link-2](https://security.padok.fr/en/blog/role-based-access-kubernetes)
- [link-3](https://developer.hashicorp.com/vagrant/docs/synced-folders/basic_usage)
- [link-4](https://security.padok.fr/en/blog/role-based-access-kubernetes)
- [link-5](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/#pod-network)
- [link-6](https://kubernetes.io/docs/reference/labels-annotations-taints/)
- [link-7](https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/)
- [link-8](https://kubernetes.io/docs/tasks/administer-cluster/migrating-from-dockershim/change-runtime-containerd/)
- [link-9](https://developer.hashicorp.com/vagrant/docs/synced-folders/basic_usage)
- [link-10](https://kubernetes.io/blog/2019/03/15/kubernetes-setup-using-ansible-and-vagrant/)
- [link-11](https://developer.hashicorp.com/vagrant/docs/provisioning/ansible_local)
- [link-12](https://docs.tigera.io/calico/latest/getting-started/kubernetes/self-managed-onprem/onpremises)
- [link-13](https://docs.tigera.io/calico/latest/getting-started/kubernetes/quickstart)
- [link-14](https://computingforgeeks.com/deploy-kubernetes-cluster-using-vagrant-terraform/?expand_article=1#google_vignette)
- [link-15](https://computingforgeeks.com/deploy-kubernetes-cluster-using-vagrant-terraform/?expand_article=1#google_vignette)
- [link-16](https://kubernetes.io/docs/concepts/services-networking/service/)
- [link-17](https://docs.tigera.io/calico/latest/getting-started/kubernetes/quickstart)
- [link-18](https://docs.tigera.io/calico/latest/getting-started/kubernetes/self-managed-onprem/onpremises)
- [link-19](https://www.tecmint.com/deploy-nginx-on-a-kubernetes-cluster/)
- [link-20](https://computingforgeeks.com/deploy-kubernetes-cluster-using-vagrant-terraform/?expand_article=1#google_vignette)
- [link-21](https://docs.ansible.com/)