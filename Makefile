.PHONY: setup clean setup build upload


help:
	@echo "setup - setup build deps"
	@echo "clean - remove all build, test, coverage and Python artifacts"
	@echo "lint - check style of all source files"
	@echo "build - compile source files to binaries"
	@echo "upload - upload compiled code to device"

setup:
	pip2 install --user --upgrade platformio
	platformio platforms install espressif

clean:
	rm src/config.h
	platformio run --target clean

build: setup
ifneq ("$(wildcard config.h)","")
	cp config.h src/config.h
	platformio run
else
	$(error Please create config.h file from sample)
endif	
	

upload: build
	platformio run --target upload

monitor:
	platformio serialports monitor -b 115200
