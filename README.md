## Production Grade GitOps Platform on AWS EKS
#### AWS Terraform Docker Kubernetes Helm ArgoCD GitHub Actions
________________________________________
#### Overview
##### Production Grade GitOps Platform built on AWS EKS using Terraform, Docker, Helm, ArgoCD, GitHub Actions and Kubernetes.
##### The project demonstrates a complete DevOps workflow from infrastructure provisioning to application deployment using GitOps principles.
________________________________________
#### Architecture
Developer

     │
    ▼
    
GitHub Repository

    │
    ▼
    
GitHub Actions

    │
    ▼
    
DockerHub

     │
    ▼
GitOps Repository

    │
    ▼

ArgoCD

    │
    ▼
Amazon EKS

    │
    
 ┌──┼─────────────┐
 ▼  ▼             ▼

Dev  Staging     Prod
________________________________________
### Technology Stack
#### Cloud
•	AWS EKS

•	VPC

•	IAM

•	EC2

•	EBS

#### Infrastructure as Code
•	Terraform

Containers

•	Docker

•	DockerHub

#### Kubernetes
•	EKS

•	Deployments

•	Services

•	Namespaces

•	Resource Quotas

#### GitOps

•	ArgoCD

•	App of Apps Pattern

#### CI/CD

•	GitHub Actions

#### Monitoring
•	Prometheus Operator

•	Node Exporter

•	kube-state-metrics
________________________________________
### Project Repositories
#### Application Repository
production-grade-gitops-platform

##### Contains:
•	Flask Application

•	Dockerfile

•	Helm Chart

•	GitHub Actions Workflow
##### GitOps Repository
gitops-manifests

Contains:

•	ArgoCD Applications

•	Environment Configuration

•	Monitoring Configuration

•	Resource Quotas
________________________________________
#### Completed Phases
Phase	Description	Status

Phase 1	Terraform Backend	✅

Phase 2	AWS VPC Networking	✅

Phase 3	Amazon EKS	✅

Phase 4	Application Containerization	✅

Phase 5	Helm Packaging	✅

Phase 6	GitHub Actions CI/CD	✅

Phase 7	ArgoCD GitOps	✅

Phase 8	Multi Environment Deployment	✅

Phase 9	Monitoring Foundation	✅
________________________________________
#### Multi Environment Strategy
Namespaces:

•	dev

•	staging

•	prod

##### Benefits:
•	Environment Isolation

•	Resource Governance

•	Controlled Promotion Strategy
________________________________________
#### Monitoring Stack
Implemented Components:

•	Prometheus Operator

•	Node Exporter

•	kube-state-metrics

#### Metrics:
•	CPU Usage

•	Memory Usage

•	Node Health

•	Pod Health

•	Cluster Metrics
________________________________________
#### Screenshots
ArgoCD Applications

![](screenshots/phase7-argocd.png)

EKS Nodes

![](screenshots/eks-nodes.png)

Monitoring Stack

![](screenshots/phase9-monitoring.png)

Helm-lint

![](screenshots/helm-lint.png)

GitHub_Pipeline

![](screenshots/github_pipeline2.png)

DockerHub_repository

![](screenshots/dockerhub-repository.png)

repository-structure-gitops

![](screenshots/repository-structure-gitops.png)

________________________________________
Deployment
Refer:
docs/DEPLOYMENT-GUIDE.md
________________________________________
Destroy Infrastructure
Refer:
docs/DESTROY-GUIDE.md
________________________________________
#### Resume Highlights
•	Built Production Grade GitOps Platform on AWS EKS

•	Implemented Infrastructure as Code using Terraform

•	Designed GitOps workflow using ArgoCD

•	Implemented Multi Environment Kubernetes Deployments

•	Automated CI/CD using GitHub Actions

•	Implemented Kubernetes Monitoring using Prometheus
________________________________________
### Author
Neeraj Kumar

AWS Certified Solutions Architect Associate

HashiCorp Certified Terraform Associate

Cloud & DevOps Engineer
