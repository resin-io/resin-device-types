networkOptions = require('../common/network-options').options

module.exports =
	aliases: [ 'nitrogen6x' ]
	name: 'Nitrogen 6X'
	arch: 'armv7hf'
	state: 'preview'

	instructions: require('../common/common-img').instructions
	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-Nitrogen6x.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-Nitrogen6x.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-Nitrogen6x.md#on-mac-and-linux'
	supportsBlink: false

	yocto:
		machine: 'nitrogen6x'
		image: 'resin-image'
		fstype: 'resin-sdcard'
		version: 'yocto-fido'
		deployArtifact: 'resin-image-nitrogen6x'

	options: networkOptions

	configuration:
		configPartition: '(4:1)'
