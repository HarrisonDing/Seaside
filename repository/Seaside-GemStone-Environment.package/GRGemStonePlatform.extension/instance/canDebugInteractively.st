*seaside-gemstone-environment
canDebugInteractively
	"we can debug interative when we have a clientForwarder for #debugger"
	Smalltalk 
		at: #OBGemStonePlatform 
		ifPresent: [:obGsPlatClass | ^obGsPlatClass clientForwarderMap includesKey: #debugger].
	^false