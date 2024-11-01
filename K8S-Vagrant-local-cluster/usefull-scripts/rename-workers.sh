#!/bin/bash

# Set the worker node names
worker_node_names=("k8s-worker-201" "k8s-worker-202")

# Run the kubectl command to label the worker nodes
for node_name in "${worker_node_names[@]}"; do
    sudo -u vagrant kubectl label nodes "$node_name" roles=worker
done





  # Wcześniej w master-playbook.yml
  # TODO: nie mozna tu dać tego taska bo worker jeszcze nie istnieje
  # - name: Rename worker nodes names
  #   # become: true
  #   become_user: vagrant
  #   command: kubectl label nodes {{ worker_node_name }} roles=worker 