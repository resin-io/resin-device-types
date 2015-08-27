networkOptions = require '../common/network-options'
common = require '../common/common-img'

SET_JUMPER = 'Set J11 (just next to the micro SD card slot) to position 2-3 and then power on the board.'

module.exports =
	aliases: [ 'vab820-quad' ]
	name: 'VIA VAB 820-quad'
	arch: 'armv7hf'
	state: 'preview'

	instructions:
		windows: [
			'WINDOWS_DISK_IMAGER'
			'EJECT'
			SET_JUMPER
		]
		osx: [
			'OSX_PLUG'
			'OSX_UNMOUNT'
			'DD_BURN_IMAGE'
			'EJECT'
			SET_JUMPER
		]
		linux: [
			'LINUX_DF'
			'DD_BURN_IMAGE'
			'EJECT'
			SET_JUMPER
		]

	supportsBlink: false

	yocto:
		machine: 'vab820-quad'
		image: 'resin-image'
		fstype: 'resin-sdcard'
		version: 'yocto-fido'
		deployArtifact: 'resin-image-vab820-quad.resin-sdcard'

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 4
				logical: 1
			path: '/config.json'

	initialization: common.initialization