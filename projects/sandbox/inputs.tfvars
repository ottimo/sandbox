#------------------------------------------------------------------------------
# Project Variables
#------------------------------------------------------------------------------
tf_project = "sandbox"

gcp_project = "nomadic-vertex-276213"
region      = "us-west1"

# Name variable definition
name = "sb"

# Defining a variable source OS image for an instance
image = "ubuntu-os-cloud/ubuntu-minimal-1804-lts"

# Definition of an instance type variable depending on the choice of tariff
server_type = "n1-standard-4"

# Definition of the region in which the instance will be created
zone = "us-west1-a"

# Determining the ssh key that will be added to the instance when creating
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDIzT6cH0+BM4VaO2Q9pRrNDbStiJ7wEhIrTU9SRhy6Yfxnt3eJAZ+F1+1Otq6OD0R8uPec0tRn+gDFMbljAV0Q2CRDVZBAF1rpMcxEyaVJLaY6m/8AlOEDVuxeVnVtaMvQ07UVsV1byQG4pGgZMjttYZYGIe3d2r9gNjZW+SfCx6oidvZQq3he8UC5lHAi2f4l1sztEsrUw0/sh+3E+7/2mkTVmICoGHeMWytcn4snNPnXblcT8btL2eyiekWmiy1kqY+F1kFWj60MEyft1ud4zqG9dgwaYaHOUenoQeeYmmMzEvxzs2+WvPcwOkIP6kyxwjvewC/wdsnEBdQ1faJn ottimo@ottimo-VirtualBox"