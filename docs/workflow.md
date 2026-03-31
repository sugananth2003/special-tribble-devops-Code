# DevOps Workflow

This repository is structured for an AWS EKS-based microservices platform using **Terraform**, **GitHub Actions**, **Helm**, and **ArgoCD**.

## End-to-End Flow

1. **Developers commit code** to feature branches or `main`.
2. **GitHub Actions** runs CI checks for Terraform and Helm.
3. **Terraform** provisions or updates AWS infrastructure such as VPC, IAM, ECR, and EKS.
4. **Services are containerized** and prepared for deployment.
5. **Helm** packages Kubernetes resources in a reusable chart.
6. **ArgoCD** watches this repo and syncs the desired state to the cluster.
7. **Kubernetes/EKS** runs the microservices in the target environment.

## Suggested Repository Layout

```text
.github/workflows/     # CI workflows
argocd/                # ArgoCD application definitions
docs/                  # Architecture and workflow docs
helm/                  # Helm charts for deployments
services/              # Microservice source folders
terraform/             # Infrastructure as code
```

## Next Steps

- Add application code inside each folder under `services/`
- Expand Terraform modules under `terraform/modules/`
- Add environment-specific Helm values files
- Connect ArgoCD to your EKS cluster and Git repository
