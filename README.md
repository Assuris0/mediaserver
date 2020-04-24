# :wave: Welcome, supporters!

## What is this?

This repository contains the "premix" configs for the geeky self-hosted recipes found at https://geek-cookbook.funkypenguin.co.nz/

## How do I use this?

### Docker Swarm (Compose files)

1. At a high level, ```git pull git@github.com:funkypenguin/geek-cookbook-premix.git /var/data/config```.
2. For each recipe, edit the .yml and replace my config (data paths, funkypenguin.co.nz domain name, etc) with yours
3. Where a ```<recipe name>.env-sample``` exists, rename this to ```<recipe-name>.env```, and customize

### Kubernetes (Helm Charts)

1. Create a [GitHub Personal Access Token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line), with repository access
2. Add a helm repository by running: 
```
export PAT=<YOUR PERSONAL ACCESS TOKEN>
helm repo add geek-cookbook-premix https://$PAT@raw.githubusercontent.com/funkypenguin/geek-cookbook-premix/helm-charts/
helm repo update
```

Example output:
```
# helm search repo geek-cookbook-premix
NAME                                   	CHART VERSION	APP VERSION	DESCRIPTION
geek-cookbook-premix/autopirate        	0.1.0        	1.16.0     	A Helm chart for Kubernetes, crafted by the fin...
geek-cookbook-premix/autopirate-storage	0.1.2        	1.16.0     	A Helm chart for Kubernetes, crafted by the fin...
geek-cookbook-premix/funkycore         	1.0.0        	1.0.0      	A collection of helpers for all Cookbook Charts
geek-cookbook-premix/huginn            	0.1.0        	1.16.0     	A Helm chart for Kubernetes
geek-cookbook-premix/wash-hands        	0.0.3        	0.0.1      	Some base dependencies in a sane cluster
```

3. Run `helm search repo geek-cookbook-premix` to see the shiny

## FAQ

### Where to go for help?

1. The [Discord chat](https://discord.gg/jUn2KHy) for realtime (*but non-persistent*) support : 
2. The [Discourse forums](https://discourse.geek-kitchen.funkypenguin.co.nz/), to trawl through previous support/discussions

### How do I request a recipe?

Create an issue, using the whats-for-dinner template ;)

### Can I contribute fixes etc?

Of course! Submit a PR, we'll go from there!