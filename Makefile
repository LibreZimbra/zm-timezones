# SPDX-License-Identifier: AGPL-3.0-or-later

ANT_TARGET = zip

all: build-ant-autover

include build.mk

install:
	$(call mk_install_dir, lib/ext/com_zimbra_bulkprovision)
	cp build/dist/commons-csv-1.2.jar         $(INSTALL_DIR)/lib/ext/com_zimbra_bulkprovision/commons-csv-1.2.jar
	cp build/dist/zm-bulkprovision-store*.jar $(INSTALL_DIR)/lib/ext/com_zimbra_bulkprovision/com_zimbra_bulkprovision.jar

clean: clean-ant
