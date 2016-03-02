# Make magic for finding the root directory of the Makefile
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

# If you're having issues with host keys, you can uncomment this line to
# disable host key checking. This is a *bad* idea and opens yourself up to a
# man-in-the-middle attack.
#
#export ANSIBLE_HOST_KEY_CHECKING=False

# A few options that are passed to ansible-playbook
CONN_ENGINE := "paramiko"
INV         := "$(ROOT_DIR)/inventory"
FORKS       := "10"
PLAYBOOK    := "$(ROOT_DIR)/playbook.yml"

OPTIONS = -c $(CONN_ENGINE) -f $(FORKS) -i $(INV)


# Default make target that gets executed when running 'make' with no arguments
all:
	ansible-playbook $(OPTIONS) $(PLAYBOOK)
