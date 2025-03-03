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
# Hash 9682
# Hash 2777
# Hash 8265
# Hash 6784
# Hash 9085
# Hash 9035
# Hash 3462
# Hash 4470
# Hash 2931
# Hash 1972
# Hash 8586
# Hash 1155
# Hash 6352
# Hash 1209
# Hash 2836
# Hash 5212
# Hash 1277
# Hash 5876
# Hash 3735
# Hash 6760
# Hash 4904
# Hash 6459
# Hash 9754
# Hash 2285
# Hash 2356
# Hash 9914
# Hash 5586
# Hash 1605
# Hash 1282
# Hash 2372
# Hash 9487
# Hash 6427
# Hash 1954
# Hash 7464
# Hash 5955
# Hash 3497
# Hash 2064
# Hash 7539
# Hash 3420
# Hash 7749
# Hash 9092
# Hash 2507
# Hash 1848
# Hash 3319
# Hash 4851
# Hash 2414
# Hash 3649
# Hash 4897
# Hash 6041
# Hash 3682
# Hash 7300
# Hash 1888
# Hash 5289
# Hash 7739
# Hash 7532
# Hash 9222
# Hash 9896
# Hash 4611