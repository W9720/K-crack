TARGET := iphone:clang:15.1:15.1
INSTALL_TARGET_PROCESSES = KMi

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = KmiCrack

KmiCrack_FILES = Tweak.x
KmiCrack_CFLAGS = -fobjc-arc
KmiCrack_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATHS)/tweak.mk

after-install::
	install.exec "killall -9 KMi"