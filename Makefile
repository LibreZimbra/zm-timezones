# SPDX-License-Identifier: AGPL-3.0-or-later

ANT_TARGET = zip

all: build-ant-autover

include build.mk

install:
	$(call mk_install_dir, jetty_base/webapps/zimbra/js/ajax/util)
	cp build/js/AjxTimezoneData.js $(INSTALL_DIR)/jetty_base/webapps/zimbra/js/ajax/util

	$(call mk_install_dir, jetty_base/webapps/zimbraAdmin/js/ajax/util)
	cp build/js/AjxTimezoneData.js $(INSTALL_DIR)/jetty_base/webapps/zimbraAdmin/js/ajax/util

	$(call mk_install_dir, jetty_base/webapps/zimbra/WEB-INF/classes/messages)
	cp build/messages/TzMsg*.properties $(INSTALL_DIR)/jetty_base/webapps/zimbra/WEB-INF/classes/messages

	$(call mk_install_dir, jetty_base/webapps/zimbraAdmin/WEB-INF/classes/messages)
	cp build/messages/TzMsg*.properties $(INSTALL_DIR)/jetty_base/webapps/zimbraAdmin/WEB-INF/classes/messages

	$(call install_conf, build/conf/timezones.ics)

clean: clean-ant
