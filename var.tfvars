### PowerVC Details
auth_url                    = "https://10.20.27.10:5000/v3/"
user_name                   = "rajakumar.batulla@ibm.com"
password                    = "***" #<intranet password>
tenant_name                 = "base-ocp"
domain_name                 = "Default"
openstack_availability_zone = "e980" #s1022

network_name = "vlan1337"

### OpenShift Cluster Details

bastion   = { instance_type = "ocp-bastion", image_id = "d7b9002a-5c8f-4a1b-878d-bb7af2172e31", "count" = 1 } #rhel10.0-2025-04-25
bootstrap = { instance_type = "cp4ba-worker", image_id = "0f359785-b2cc-4395-9191-7a0db75ceda1", "count" = 1 } #rhcos-419-96-20250402
master    = { instance_type = "cp4ba-worker", image_id = "0f359785-b2cc-4395-9191-7a0db75ceda1", "count" = 3 }
worker    = { instance_type = "cp4ba-worker", image_id = "0f359785-b2cc-4395-9191-7a0db75ceda1", "count" = 3 }

rhel_username                   = "root" #Set it to an appropriate username for non-root user access
public_key_file                 = "data/id_ed25519.pub"
private_key_file                = "data/id_ed25519"
rhel_subscription_username      = "rhn-support-rbattula" #Leave this as-is if using CentOS as bastion image
rhel_subscription_password      = "***" #Leave this as-is if using CentOS as bastion image
rhel_subscription_org           = ""                # Define it only when using activationkey for RHEL subscription
rhel_subscription_activationkey = ""                # Define it only when using activationkey for RHEL subscription

connection_timeout = 45
jump_host          = ""

### OpenShift Installation Details
openshift_install_tarball = "https://mirror.openshift.com/pub/openshift-v4/multi/clients/ocp/stable-4.20/ppc64le/openshift-install-linux.tar.gz"
openshift_client_tarball  = "https://mirror.openshift.com/pub/openshift-v4/multi/clients/ocp/stable-4.20/ppc64le/openshift-client-linux.tar.gz"
pull_secret_file          = "data/pull-secret.txt"

cluster_domain    = "powervs-openshift-ipi.cis.ibm.net"
cluster_id_prefix = "kmm-auto"                             # Set it to empty if just want to use cluster_id without prefix
cluster_id        = ""                                  # It will use random generated id with cluster_id_prefix if this is not set
storage_type      = "nfs"
volume_size       = "300"

dns_forwarders = "10.0.10.4; 10.0.10.5"
