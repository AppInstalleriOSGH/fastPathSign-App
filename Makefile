TARGET = fastPathSign

#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS16.2.sdk

CC = clang

ARCHS = arm64 arm64e

CFLAGS = --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS16.2.sdk -framework Foundation -framework CoreServices -framework Security -fobjc-arc $(shell pkg-config --cflags libcrypto) -Isrc/external/include
LDFLAGS = $(shell pkg-config --libs libcrypto) -Lsrc/external/lib -lchoma

$(TARGET): $(wildcard src/*.m src/*.c)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	@rm -f $(TARGET)
