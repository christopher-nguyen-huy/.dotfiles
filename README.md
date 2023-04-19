# Dotfiles
Install using gnu stow

## Deployment
- `stow <dir>`

## Global changes
- switch to master branch
- commit

## Machine Specific Configurations
- create new branch for machine
- remember to merge changes from master from time to time
- remove dead machines
- ideally have dotfiles import non version controlled files
	- ex: `source {machine_name}`

### Alternatively
- create new folder for that machine
	- ex: nvim.machine2
- remember to merge from common to machine specific

## Distro specific
- only list of packages to install