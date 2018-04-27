# Comment this out to use the native Openssl libraries on the build machine.
# Otherwise it must point to a compiled openssl directory
FFMPEG_BUILD_PATH = /home/simon/2018Q1/ffmpeg-3.4.1/ffmpeg-build

FFMPEG_INCLUDE_PATH = $(FFMPEG_BUILD_PATH)/include
SDL_INCLUDE_PATH = /usr/local/include

FFMPEG_LIB_PATH = $(FFMPEG_BUILD_PATH)/lib/
SDL_LIB_PATH = /usr/local/lib/

COMPILEFLAGS += -I$(FFMPEG_INCLUDE_PATH) -I$(SDL_INCLUDE_PATH) -L$(FFMPEG_LIB_PATH) -L$(SDL_LIB_PATH) -lavformat -lavdevice -lavfilter -lavcodec -lavutil -lswresample -lswscale -lpthread -lSDL2main -lSDL2

LINK_OPTS = -lpthread -ldl -lz -lm
CFLAGS = $(COMPILEFLAGS) $(LINK_OPTS)

CROSS_COMPILE=

#CC = $(CROSS_COMPILE)gcc $(CFLAGS) -lpthread -ldl -lz -lm
CC = $(CROSS_COMPILE)gcc

.PHONY: clean all

all: $(APPS)

clean:
	rm -f $(APPS) 
