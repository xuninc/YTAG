export TARGET = iphone:clang:18.6:14.0
export SDK_PATH = $(THEOS)/sdks/iPhoneOS18.6.sdk/
export SYSROOT = $(SDK_PATH)
export ARCHS = arm64
export ADDITIONAL_CFLAGS = -I$(THEOS_PROJECT_DIR)/Tweaks -I$(THEOS_PROJECT_DIR)/Tweaks/YouTubeHeader

DEBUG = 0
FINALPACKAGE = 1
PACKAGE_VERSION = 1.0.0

INSTALL_TARGET_PROCESSES = YouTube
TWEAK_NAME = YTLitePlus

YTLitePlus_FILES = YTLitePlus.xm $(shell find Source -name '*.xm' -o -name '*.x' -o -name '*.m')
YTLitePlus_FRAMEWORKS = UIKit Security
YTLitePlus_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unsupported-availability-guard -Wno-unused-but-set-variable -DTWEAK_VERSION=$(PACKAGE_VERSION)

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
