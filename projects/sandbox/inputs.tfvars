#------------------------------------------------------------------------------
# Project Variables
#------------------------------------------------------------------------------
tf_project = "sandbox"

gcp_project = "nomadic-vertex-276213"
region      = "us-west1"

# Name variable definition
name = "sb"

disk_size = 40

# Defining a variable source OS image for an instance
image = "ubuntu-os-cloud/ubuntu-minimal-1804-lts"

# Definition of an instance type variable depending on the choice of tariff
server_type = "n1-standard-4"

# Definition of the region in which the instance will be created
zone = "us-west1-a"

# Determining the ssh key that will be added to the instance when creating
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1Fi010nAL+OYZxR7CvhcpggoPsojsp/L2foFe0hl0FLQd1XVgPRgOEAL2zM2Dp80R0UC1Xi2glc5B2MjEeQ5QLxVLMoNkpriYY59YsKqhQTLql1kLtT6PqnoOcWhOtBxvxw1FlPT+FXAd1L1Kv/sWYW/o38TmB4I2hFfxW3H+G6KZ0czhs4GLB/wB9fa+f+R2FyCb3DRK6ZcDhL5sCsdNPnLupMKolSjy1bjXH+DKCJTrPDldW+aXUTKhpHLMt2uqbfGbDx6AQup4NF7P2e3/Wxgc41NdsafveWgi7k6Q6fk8YbsZW8fKnYQTJEPeMsVizG57XpVI6SKdZIg1gHlQROfeaH08JOx+wf3PoyBjv4SE9chcixqa+XRiJ27kxITiQV51xsRjJp6r8lvkIHqTlJ6PMfoBzz8bZWoLv46mYlnTf6M4uR4KwJQGPGGNTbsC0wXMPlqME+o9U0HgReusVmRJcLa1zlcVbNsrq+4+gXzs6LnyuOd3hTp00OZZ/jc="