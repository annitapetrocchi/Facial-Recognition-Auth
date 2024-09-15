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
# Hash 2230
# Hash 1431
# Hash 5028
# Hash 3375
# Hash 8406
# Hash 7484
# Hash 3066
# Hash 7192
# Hash 7086
# Hash 4729
# Hash 4222
# Hash 7765
# Hash 6506
# Hash 9598
# Hash 8705
# Hash 8472
# Hash 3124
# Hash 9820
# Hash 1216
# Hash 8209
# Hash 2899
# Hash 6906
# Hash 8253
# Hash 6635