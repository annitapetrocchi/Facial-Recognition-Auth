#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 5143
# Hash 3174
# Hash 3377
# Hash 6000
# Hash 9587
# Hash 9658
# Hash 1377
# Hash 7148
# Hash 5543
# Hash 3119
# Hash 8520
# Hash 9331
# Hash 8419
# Hash 9444
# Hash 6491
# Hash 3083
# Hash 6496
# Hash 6509
# Hash 1948
# Hash 9456
# Hash 5038
# Hash 6141
# Hash 6099