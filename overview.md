# Project Overview

This document provides a high-level overview of the retail platform DevOps project, outlining its architecture, key components, and workflow. It is designed to help new contributors and stakeholders quickly understand the structure and operational flow of the system.

## Architecture Summary

- **Microservices**: 5 core services (Catalog, Cart, Orders, Payments, Users/Auth), each containerized and independently deployable.
- **Containerization**: Docker is used for building and packaging each service.
- **Orchestration**: AWS EKS (Kubernetes) manages service deployment, scaling, and resilience.
- **Infrastructure as Code**: Terraform provisions all AWS resources, using a modular structure for reusability and maintainability.
- **CI/CD**: GitHub Actions automates build, test, and image push workflows. ArgoCD enables GitOps-style continuous delivery to EKS.
- **Packaging & Config**: Helm charts define Kubernetes manifests for each service, supporting parameterization and versioning.
- **Observability**: OpenTelemetry is integrated for tracing, metrics, and logging, with data exported to AWS X-Ray, Prometheus, and Grafana.

## Implementation Flow

1. **Infrastructure Provisioning**: Terraform sets up VPC, EKS, IAM, and other AWS resources. State is managed in S3 with DynamoDB locking.
2. **Development Workflow**: Developers commit code to GitHub, triggering CI/CD pipelines for each microservice.
3. **CI/CD Pipeline**: GitHub Actions builds Docker images, runs tests, and pushes images to AWS ECR.
4. **Helm Chart Packaging**: Each service has a Helm chart for Kubernetes deployment, supporting parameterized values.
5. **GitOps Deployment**: ArgoCD watches for Helm chart changes and syncs deployments to EKS.
6. **Production Operations**: Services run on EKS with load balancing, auto-scaling, and secrets management.
7. **Monitoring & Observability**: OpenTelemetry provides end-to-end visibility, exporting data to monitoring tools.

## Key Features

- Modular, production-ready infrastructure
- Automated, GitOps-driven deployment pipeline
- Full observability and monitoring
- Secure secrets and state management
- Easily extensible for additional microservices

Refer to the main README for detailed workflow steps and implementation details.