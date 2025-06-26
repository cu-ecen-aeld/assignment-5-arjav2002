
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = '8ced959ea5666b1b9622611fd50cb9adf3f9691e'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-arjav2002.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull misc-modules
LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

#define LDD_BUILD_CMDS
#	$(MAKE) -C $(@D)/misc-modules
#	$(MAKE) -C $(@D)/scull
#endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull.ko $(TARGET_DIR)/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/faulty.ko $(TARGET_DIR)/bin/
#	$(INSTALL) -m 0755 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
