# Sandbox

A standalone sandbox to detonate different type of files: terraform create a single host on GCP with nested virtualization,
ansible scripts install and configure some tools like:

- cuckoo sandbox
- velocity
- virtualbox
- vagrant
- packer

I plan to add more tools like:
- AndroGuard
- APK Scan
- CIF
- Cryptam
- DroidMon
- Fraudguard
- FireEye FLOSS
- Jakstab
- MalwareJail
- MAnalyze
- mitmproxy
- moloch
- Noriben
- PcapViz
- Quicksand
- Suricata
- ViperMonkey
- CAPE
- FAME
- capa
- malice (???)

This project is based on:

- Terraform-skeleton
- custom terraform configuration for GCP 
- ansible juju4-cuckoo-sandbox
- custom ansible script
- nbeede/BoomBox


To Install:

```
cd roles/ansible-cuckoo-sandbox
./get-dependencies.sh
```

To use the sandbox, you have to create a GCP project and a service account with editor permission.
Download the json credentials file and rename it account.json.
Then:

```
PROJECT=sandbox make init
PROJECT=sandbox make plan
PROJECT=sandbox make apply

```

After host creation and ansible configuration a tmux session will run the guest creation with vagrant.
Before use the sandbox ensure this session finish.

To start cuckoo:
```
ssh ip_host -l root -L 8000:localhost:8000
su - _cuckoo
source /var/_cuckoo/env-cuckoo/bin/activate
cuckoo &
cuckoo web
```
