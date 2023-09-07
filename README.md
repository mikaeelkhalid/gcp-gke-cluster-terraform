# GCP GKE Cluster Setup Using Terraform

[![Mikaeel Khalid](https://badgen.now.sh/badge/by/mikaeelkhalid/purple)](https://github.com/mikaeelkhalid)

This repository contains Terraform configurations to set up a Google Kubernetes Engine (GKE) cluster on Google Cloud Platform (GCP) with various features and resources.

## File Structure

The repository is organized into multiple Terraform configuration files, each responsible for a specific GCP resource or functionality:

```
├── firewalls.tf          # Firewall rules configuration
├── kubernetes.tf         # GKE cluster configuration
├── nat.tf                # NAT router and address configuration
├── node-pools.tf         # GKE node pools configuration
├── provider.tf           # Terraform provider and backend configuration
├── router.tf             # GCP router configuration for the VPC
├── subnets.tf            # Subnetworks configuration
├── variables.tf          # Variables
└── vpc.tf                # Virtual Private Cloud (VPC) configuration
```

Make sure to familiarize yourself with each file to understand the resources being created and their interdependencies.

## Resources Created

1. **Virtual Private Cloud (VPC)**: A named `main` VPC is set up.
2. **Subnetwork**: A private subnetwork within the `us-central1` region.
3. **Firewall Rule**: Allows SSH traffic (port 22) from any source.
4. **Google Kubernetes Engine (GKE) Cluster**: Configured to use the created VPC and subnetwork.
5. **Node Pools**: Two node pools, `general` and `spot`, are created within the GKE cluster.
6. **Router and NAT**: For routing traffic to and from the private subnetwork.
7. **Service Account**: A service account named `kubernetes` for the GKE cluster.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- A [GCP account](https://console.cloud.google.com/) and a project set up.
- Properly [configured](https://cloud.google.com/sdk/docs/initializing) Google Cloud SDK.

## Getting Started

1. **Clone the repository**:

   ```sh
   git clone https://github.com/mikaeelkhalid/gcp-gke-cluster-terraform.git
   ```

2. **Initialize the Terraform working directory**:

   ```sh
   terraform init
   ```

3. **Apply the Terraform configuration**:

   ```sh
   terraform apply
   ```

   This will show you what changes will be applied. If everything looks good, approve the changes to begin provisioning resources.

4. Once you're done, remember to **destroy the resources** to avoid unwanted costs:

   ```sh
   terraform destroy
   ```

## Notes

- Ensure that you've set the correct project ID in the `provider.tf` file.
- The `node-pools.tf` file configures both standard and preemptible (spot) node pools. Adjust the node count and machine type as per your requirements.
- Ensure that the Google Cloud Storage bucket defined in `terraform` backend block in `provider.tf` exists for storing the Terraform state.

## Contributing

Feel free to raise issues or pull requests if you'd like to improve the configurations or add more features.

