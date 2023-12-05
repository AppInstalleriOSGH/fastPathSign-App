TARGET := iphone:clang:latest
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TOOL_NAME = trollstorehelper

trollstorehelper_FILES = $(wildcard *.m) $(wildcard *.c)
trollstorehelper_CFLAGS = -fobjc-arc $(shell pkg-config --cflags libcrypto) -Iexternal/include
trollstorehelper_LDFLAGS = -Lexternal/lib -lcrypto -lchoma
trollstorehelper_CODESIGN_FLAGS = --entitlements entitlements.plist
trollstorehelper_INSTALL_PATH = /usr/local/bin
trollstorehelper_FRAMEWORKS = CoreTelephony
trollstorehelper_PRIVATE_FRAMEWORKS = SpringBoardServices BackBoardServices MobileContainerManager

include $(THEOS_MAKE_PATH)/tool.mk
