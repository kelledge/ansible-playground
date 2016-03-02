# Ansible Playground
Right now, this just contains a _very_ a simple example of an Ansible playbook.
It will install the 'kelledge' user and ssh public key. It will also make sure
the 'zsh' package is installed and set as the default shell for the user.

## Usage
You can run the playbook by just running `make`.

## Warning
You can very easily lock yourself out of hosts by running dumb commands. 
*ALWAYS* test your changes on local machines when you can. *NEVER* run an 
untested playbook across a large number of hosts. It is a very easy way to lock
yourself out of tens or hundreds of machines.

_You've been warned_

## Files
There are three files:

 # Makefile
 # playbook.yml
 # inventory

### Makefile
This is just a simple makefile to wrap the relativly tedious calls to the 
`ansible-playbook` command. It mostly just assembles the various command line
arguments that are passed straight through to `ansible-playbook`

### playbook.yml
The actual playbook. There are plenty of comments inside to help explain its
purpose and usage.

### inventory
This is a flat file that contains a list of hosts that the playbook will be run
across. Right now, there is just a single host, but extending it is as easy as
adding the hostname or IP address for the hosts that will be managed by the
playbook.
