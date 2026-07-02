# helper-TFloadProvider
Load the bpg/proxmox Terraform provider plugin for caching via a Nexus 3 proxy.

## Usage

Provide the Proxmox endpoint and credentials through environment variables so
the project stays reusable across targets:

```bash
export TF_VAR_proxmox_endpoint='https://proxmox.example.com:8006/'
export TF_VAR_proxmox_api_token='user@realm!tokenid=tokenvalue'

terraform init
terraform plan
```

Alternatively, use username and password credentials:

```bash
export TF_VAR_proxmox_username='user@realm'
export TF_VAR_proxmox_password='password'
```
