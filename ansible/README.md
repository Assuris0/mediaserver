# What is this?

This is the beginning of a set of Ansible roles / playbooks, to deploy the Geek's Cookbook recipes automatically to a series of Proxmox VMs. The goal is either to streamline testing of new recipes (in which case the VMs can be destroyed when complete), or to stand up a completely automated environment.

# Requirements

You'll need, for your environment:

1. [Terraform](https://www.terraform.io)
2. [Terraform proxmox provider](https://github.com/Telmate/terraform-provider-proxmox)
3. [Ansible](https://www.ansible.com)

# How to use it

I expect this section will grow as we progress, but at the very least:

1. Copy `hosts.example` to `hosts`, and customize it for your own environment (`hosts` is ignored by `.gitignore`)
2. Run the playbook by executing `ansible-playbook -i hosts engage.yml -e proxmox_host_password=<your password here>`

# How to get help

Jump into #dev in http://chat.funkypenguin.co.nz and shout loudly :)