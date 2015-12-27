include theos/makefiles/common.mk
export ARCHS = armv7 arm64
TWEAK_NAME = RepairSettingsLayout
RepairSettingsLayout_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
