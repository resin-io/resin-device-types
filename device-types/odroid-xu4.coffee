networkOptions = require '../common/network-options'
common = require '../common/common-img'

module.exports =
	aliases: [ 'odroid-ux3', 'odroid-u3+' ]
	name: 'ODROID-XU4'
	arch: 'armv7hf'
	state: 'preview'

	instructions: common.instructions
	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-XU4.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-XU4.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-XU4.md#on-mac-and-linux'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'odroid-ux3'
		image: 'resin-image'
		fstype: 'resin-sdcard'
		version: 'yocto-fido'
		deployArtifact: 'resin-image-odroid-ux3.resin-sdcard'

	configuration:
		config:
			partition:
				primary: 4
				logical: 1
			path: '/config.json'

	initialization: common.initialization