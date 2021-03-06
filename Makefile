all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""  Makes an image with Ansible and docker in it
	@echo ""   1. make vbox       - your site will be in ../builds

qemu: buildqemu beep

78qemu: 78buildqemu beep

qemudebug: buildqemudebug beep

vbox: buildvbox beep

vboxdebug: buildvboxdebug beep

buildqemudebug:
	/usr/bin/time -v packer build -debug --only=qemu debian-8.0-amd64.json

buildqemu:
	/usr/bin/time -v packer build --only=qemu debian-8.0-amd64.json

buildvboxdebug:
	/usr/bin/time -v packer build -debug --only=virtualbox-iso debian-8.0-amd64.json

buildvbox:
	/usr/bin/time -v packer build --only=virtualbox-iso debian-8.0-amd64.json

78buildqemudebug:
	/usr/bin/time -v packer build -debug --only=qemu debian-7.8-amd64.json

78buildqemu:
	/usr/bin/time -v packer build --only=qemu debian-7.8-amd64.json

78buildvboxdebug:
	/usr/bin/time -v packer build -debug --only=virtualbox-iso debian-7.8-amd64.json

78buildvbox:
	/usr/bin/time -v packer build --only=virtualbox-iso debian-7.8-amd64.json

beep:
	@echo "beep"
	@aplay /usr/share/sounds/alsa/Front_Center.wav
