TARGET := iphone:clang:latest
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TOOL_NAME = fastPathSign

fastPathSign_FILES = $(wildcard *.m) $(wildcard *.c)
fastPathSign_CFLAGS = -fobjc-arc $(shell pkg-config --cflags libcrypto) -Iexternal/include
fastPathSign_LDFLAGS = -Lexternal/lib -lcrypto -lchoma
fastPathSign_CODESIGN_FLAGS = -Sentitlements.plist
fastPathSign_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
