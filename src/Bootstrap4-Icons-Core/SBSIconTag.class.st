Class {
	#name : #SBSIconTag,
	#superclass : #WATagBrush,
	#instVars : [
		'identifier',
		'embedded'
	],
	#classVars : [
		'BaseUrl'
	],
	#classInstVars : [
		'UsesSprites'
	],
	#category : #'Bootstrap4-Icons-Core-Base'
}

{ #category : #acccessing }
SBSIconTag class >> baseUrl [
	^ (BaseUrl
		ifNil: [ | url |
			url := WAFileHandler default baseUrlForLibrary.
			url addToPath: SBSIconsFileLibrary name ]) copy
]

{ #category : #acccessing }
SBSIconTag class >> baseUrl: anObject [
	
	BaseUrl := anObject ifNotNil: [ :obj | obj seasideUrl ]
]

{ #category : #compiling }
SBSIconTag class >> compileIconMethodsFor: iconClasses [
	(iconClasses copyWithoutAll: self reservedNames)
		do: [ :each | 
			| selector |
			selector := self selectorForIconNamed: each.
			self compileIconTagMethodNamed: selector identifier: each.
			self compileImageIconMethodNamed: selector identifier: each ]
]

{ #category : #compiling }
SBSIconTag class >> compileIconTagMethodNamed: selector identifier: each [
	| methodSource |
	methodSource := String
		streamContents: [ :stream | 
			stream
				nextPutAll: selector;
				cr;
				tab;
				nextPutAll: 'identifier := ''';
				nextPutAll: each;
				nextPutAll: '''.';
				cr;
				tab;
				nextPutAll: 'self defineClassFromIdentifier' ].
	^ GRPlatform current
		compile: methodSource
		into: self
		classified: 'icons'
]

{ #category : #compiling }
SBSIconTag class >> compileIconsFromDirectory: aFileReference [
	self
		compileIconMethodsFor:
			((aFileReference asFileReference filesMatching: '*.svg')
				collect: [ :each | each base ])
]

{ #category : #compiling }
SBSIconTag class >> compileImageIconMethodNamed: selector identifier: each [
	| methodSource |
	methodSource := String
		streamContents: [ :stream | 
			stream
				nextPutAll: selector;
				cr;
				tab;
				nextPutAll: 'self setImageTagUrl:''';
				nextPutAll: each;
				nextPutAll: '''.';
				cr;
				tab;
				nextPutAll: '^imageTag'
				 ].
	^ GRPlatform current
		compile: methodSource
		into: SBSImageIcon
		classified: 'icons'
]

{ #category : #resolving }
SBSIconTag class >> embeddedContentFor: identifier library: library [

	| selector |
	selector := ((self selectorForIconNamed: identifier) asLowercase, 'Svg') asSymbol.
	^(library / selector) contents
]

{ #category : #constants }
SBSIconTag class >> iconsBundleFilename [
	^ 'bootstrap-icons.svg'
]

{ #category : #resolving }
SBSIconTag class >> imageUrlFor: identifier [
	^ self imageUrlFor: identifier base: self baseUrl
]

{ #category : #resolving }
SBSIconTag class >> imageUrlFor: identifier base: url [
	^ url	addToPath: identifier, '.svg'; yourself
]

{ #category : #constants }
SBSIconTag class >> reservedNames [

	^self reservedNamesMap keys
]

{ #category : #constants }
SBSIconTag class >> reservedNamesMap [
	^ Dictionary new 
		at: 'tag' put: #tagIcon;
		at: 'hash' put: #hashIcon;
		at: 'embedded' put: #embeddedIcon;
		yourself
]

{ #category : #resolving }
SBSIconTag class >> selectorForIconNamed: each [
	| selector |
	selector := String
		streamContents: [ :stream | 
			| tokens |
			tokens := each findTokens: $-.
			stream nextPutAll: tokens first.
			tokens size > 1
				ifTrue: [ tokens
						from: 2
						to: tokens size
						do: [ :token | stream nextPutAll: token capitalized ] ] ].
	^ selector
]

{ #category : #configuring }
SBSIconTag class >> useEmbedding [
	<script>
	self usesSprites: false
]

{ #category : #configuring }
SBSIconTag class >> useFileLibrary [
	<script>
	self baseUrl: nil
]

{ #category : #configuring }
SBSIconTag class >> useSprites [
	<script>
	self usesSprites: true
]

{ #category : #configuring }
SBSIconTag class >> usesSprites [
	^ UsesSprites ifNil: [ UsesSprites := false ]
]

{ #category : #configuring }
SBSIconTag class >> usesSprites: aBoolean [
	UsesSprites := aBoolean
]

{ #category : #resolving }
SBSIconTag class >> xlinkUrlFor: identifier [
	^self xlinkUrlFor: identifier base: self baseUrl
]

{ #category : #resolving }
SBSIconTag class >> xlinkUrlFor: identifier base: url [
	^ url
				addToPath: self iconsBundleFilename;
				fragment: identifier
]

{ #category : #icons }
SBSIconTag >> alarm [
	identifier := 'alarm'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alarmFill [
	identifier := 'alarm-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alignBottom [
	identifier := 'align-bottom'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alignCenter [
	identifier := 'align-center'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alignEnd [
	identifier := 'align-end'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alignMiddle [
	identifier := 'align-middle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alignStart [
	identifier := 'align-start'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alignTop [
	identifier := 'align-top'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> alt [
	identifier := 'alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> app [
	identifier := 'app'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> appIndicator [
	identifier := 'app-indicator'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> archive [
	identifier := 'archive'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> archiveFill [
	identifier := 'archive-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrow90degDown [
	identifier := 'arrow-90deg-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrow90degLeft [
	identifier := 'arrow-90deg-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrow90degRight [
	identifier := 'arrow-90deg-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrow90degUp [
	identifier := 'arrow-90deg-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowBarDown [
	identifier := 'arrow-bar-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowBarLeft [
	identifier := 'arrow-bar-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowBarRight [
	identifier := 'arrow-bar-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowBarUp [
	identifier := 'arrow-bar-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowClockwise [
	identifier := 'arrow-clockwise'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowCounterclockwise [
	identifier := 'arrow-counterclockwise'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDown [
	identifier := 'arrow-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownCircle [
	identifier := 'arrow-down-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownCircleFill [
	identifier := 'arrow-down-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownLeft [
	identifier := 'arrow-down-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownLeftCircle [
	identifier := 'arrow-down-left-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownLeftCircleFill [
	identifier := 'arrow-down-left-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownLeftSquare [
	identifier := 'arrow-down-left-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownLeftSquareFill [
	identifier := 'arrow-down-left-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownRight [
	identifier := 'arrow-down-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownRightCircle [
	identifier := 'arrow-down-right-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownRightCircleFill [
	identifier := 'arrow-down-right-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownRightSquare [
	identifier := 'arrow-down-right-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownRightSquareFill [
	identifier := 'arrow-down-right-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownShort [
	identifier := 'arrow-down-short'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownSquare [
	identifier := 'arrow-down-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownSquareFill [
	identifier := 'arrow-down-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowDownUp [
	identifier := 'arrow-down-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowLeft [
	identifier := 'arrow-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowLeftCircle [
	identifier := 'arrow-left-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowLeftCircleFill [
	identifier := 'arrow-left-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowLeftRight [
	identifier := 'arrow-left-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowLeftShort [
	identifier := 'arrow-left-short'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowLeftSquare [
	identifier := 'arrow-left-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowLeftSquareFill [
	identifier := 'arrow-left-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowRepeat [
	identifier := 'arrow-repeat'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowReturnLeft [
	identifier := 'arrow-return-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowReturnRight [
	identifier := 'arrow-return-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowRight [
	identifier := 'arrow-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowRightCircle [
	identifier := 'arrow-right-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowRightCircleFill [
	identifier := 'arrow-right-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowRightShort [
	identifier := 'arrow-right-short'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowRightSquare [
	identifier := 'arrow-right-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowRightSquareFill [
	identifier := 'arrow-right-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUp [
	identifier := 'arrow-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpCircle [
	identifier := 'arrow-up-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpCircleFill [
	identifier := 'arrow-up-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpLeft [
	identifier := 'arrow-up-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpLeftCircle [
	identifier := 'arrow-up-left-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpLeftCircleFill [
	identifier := 'arrow-up-left-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpLeftSquare [
	identifier := 'arrow-up-left-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpLeftSquareFill [
	identifier := 'arrow-up-left-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpRight [
	identifier := 'arrow-up-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpRightCircle [
	identifier := 'arrow-up-right-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpRightCircleFill [
	identifier := 'arrow-up-right-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpRightSquare [
	identifier := 'arrow-up-right-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpRightSquareFill [
	identifier := 'arrow-up-right-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpShort [
	identifier := 'arrow-up-short'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpSquare [
	identifier := 'arrow-up-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowUpSquareFill [
	identifier := 'arrow-up-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowsAngleContract [
	identifier := 'arrows-angle-contract'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowsAngleExpand [
	identifier := 'arrows-angle-expand'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowsCollapse [
	identifier := 'arrows-collapse'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowsExpand [
	identifier := 'arrows-expand'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowsFullscreen [
	identifier := 'arrows-fullscreen'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> arrowsMove [
	identifier := 'arrows-move'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> aspectRatio [
	identifier := 'aspect-ratio'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> aspectRatioFill [
	identifier := 'aspect-ratio-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> asterisk [
	identifier := 'asterisk'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> at [
	identifier := 'at'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> award [
	identifier := 'award'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> awardFill [
	identifier := 'award-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> back [
	identifier := 'back'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> backspace [
	identifier := 'backspace'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> backspaceFill [
	identifier := 'backspace-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> backspaceReverse [
	identifier := 'backspace-reverse'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> backspaceReverseFill [
	identifier := 'backspace-reverse-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badge4k [
	identifier := 'badge-4k'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badge4kFill [
	identifier := 'badge-4k-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badge8k [
	identifier := 'badge-8k'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badge8kFill [
	identifier := 'badge-8k-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeCc [
	identifier := 'badge-cc'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeCcFill [
	identifier := 'badge-cc-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeHd [
	identifier := 'badge-hd'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeHdFill [
	identifier := 'badge-hd-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeTm [
	identifier := 'badge-tm'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeTmFill [
	identifier := 'badge-tm-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeVo [
	identifier := 'badge-vo'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> badgeVoFill [
	identifier := 'badge-vo-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bag [
	identifier := 'bag'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bagCheck [
	identifier := 'bag-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bagDash [
	identifier := 'bag-dash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bagFill [
	identifier := 'bag-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bagPlus [
	identifier := 'bag-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> barChart [
	identifier := 'bar-chart'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> barChartFill [
	identifier := 'bar-chart-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> barChartLine [
	identifier := 'bar-chart-line'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> barChartLineFill [
	identifier := 'bar-chart-line-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> barChartSteps [
	identifier := 'bar-chart-steps'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> basicTag [
	identifier := 'tag'.
	self class: 'bi bi-' , identifier
]

{ #category : #icons }
SBSIconTag >> basket [
	identifier := 'basket'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> basket2 [
	identifier := 'basket2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> basket2Fill [
	identifier := 'basket2-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> basket3 [
	identifier := 'basket3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> basket3Fill [
	identifier := 'basket3-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> basketFill [
	identifier := 'basket-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> battery [
	identifier := 'battery'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> batteryCharging [
	identifier := 'battery-charging'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> batteryFull [
	identifier := 'battery-full'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> batteryHalf [
	identifier := 'battery-half'.
	self defineClassFromIdentifier
]

{ #category : #accessing }
SBSIconTag >> be1emSize [

	self height: '1em'.
	self width: '1em'
]

{ #category : #accessing }
SBSIconTag >> be32Size [

	self height: '32'.
	self width: '32'
]

{ #category : #configuring }
SBSIconTag >> beBundled [
	embedded := false
]

{ #category : #configuring }
SBSIconTag >> beEmbedded [
	embedded := false
]

{ #category : #configuring }
SBSIconTag >> beSprite [
	embedded := false
]

{ #category : #icons }
SBSIconTag >> bell [
	identifier := 'bell'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bellFill [
	identifier := 'bell-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bezier [
	identifier := 'bezier'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bezier2 [
	identifier := 'bezier2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bicycle [
	identifier := 'bicycle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> binoculars [
	identifier := 'binoculars'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> binocularsFill [
	identifier := 'binoculars-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> blockquoteLeft [
	identifier := 'blockquote-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> blockquoteRight [
	identifier := 'blockquote-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> book [
	identifier := 'book'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookFill [
	identifier := 'book-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookHalf [
	identifier := 'book-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookmark [
	identifier := 'bookmark'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookmarkCheck [
	identifier := 'bookmark-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookmarkDash [
	identifier := 'bookmark-dash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookmarkFill [
	identifier := 'bookmark-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookmarkPlus [
	identifier := 'bookmark-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookmarks [
	identifier := 'bookmarks'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookmarksFill [
	identifier := 'bookmarks-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bookshelf [
	identifier := 'bookshelf'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bootstrap [
	identifier := 'bootstrap'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bootstrapFill [
	identifier := 'bootstrap-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bootstrapReboot [
	identifier := 'bootstrap-reboot'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> borderStyle [
	identifier := 'border-style'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> borderWidth [
	identifier := 'border-width'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boundingBox [
	identifier := 'bounding-box'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boundingBoxCircles [
	identifier := 'bounding-box-circles'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> box [
	identifier := 'box'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowDown [
	identifier := 'box-arrow-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowDownLeft [
	identifier := 'box-arrow-down-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowDownRight [
	identifier := 'box-arrow-down-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInDown [
	identifier := 'box-arrow-in-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInDownLeft [
	identifier := 'box-arrow-in-down-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInDownRight [
	identifier := 'box-arrow-in-down-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInLeft [
	identifier := 'box-arrow-in-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInRight [
	identifier := 'box-arrow-in-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInUp [
	identifier := 'box-arrow-in-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInUpLeft [
	identifier := 'box-arrow-in-up-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowInUpRight [
	identifier := 'box-arrow-in-up-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowLeft [
	identifier := 'box-arrow-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowRight [
	identifier := 'box-arrow-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowUp [
	identifier := 'box-arrow-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowUpLeft [
	identifier := 'box-arrow-up-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxArrowUpRight [
	identifier := 'box-arrow-up-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> boxSeam [
	identifier := 'box-seam'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> braces [
	identifier := 'braces'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bricks [
	identifier := 'bricks'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> briefcase [
	identifier := 'briefcase'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> briefcaseFill [
	identifier := 'briefcase-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessAltHigh [
	identifier := 'brightness-alt-high'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessAltHighFill [
	identifier := 'brightness-alt-high-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessAltLow [
	identifier := 'brightness-alt-low'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessAltLowFill [
	identifier := 'brightness-alt-low-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessHigh [
	identifier := 'brightness-high'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessHighFill [
	identifier := 'brightness-high-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessLow [
	identifier := 'brightness-low'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brightnessLowFill [
	identifier := 'brightness-low-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> broadcast [
	identifier := 'broadcast'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> broadcastPin [
	identifier := 'broadcast-pin'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> brush [
	identifier := 'brush'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bucket [
	identifier := 'bucket'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bucketFill [
	identifier := 'bucket-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bug [
	identifier := 'bug'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bugFill [
	identifier := 'bug-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> building [
	identifier := 'building'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> bullseye [
	identifier := 'bullseye'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calculator [
	identifier := 'calculator'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calculatorFill [
	identifier := 'calculator-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar [
	identifier := 'calendar'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2 [
	identifier := 'calendar2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Check [
	identifier := 'calendar2-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2CheckFill [
	identifier := 'calendar2-check-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Date [
	identifier := 'calendar2-date'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2DateFill [
	identifier := 'calendar2-date-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Day [
	identifier := 'calendar2-day'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2DayFill [
	identifier := 'calendar2-day-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Event [
	identifier := 'calendar2-event'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2EventFill [
	identifier := 'calendar2-event-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Fill [
	identifier := 'calendar2-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Minus [
	identifier := 'calendar2-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2MinusFill [
	identifier := 'calendar2-minus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Month [
	identifier := 'calendar2-month'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2MonthFill [
	identifier := 'calendar2-month-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Plus [
	identifier := 'calendar2-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2PlusFill [
	identifier := 'calendar2-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Range [
	identifier := 'calendar2-range'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2RangeFill [
	identifier := 'calendar2-range-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2Week [
	identifier := 'calendar2-week'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar2WeekFill [
	identifier := 'calendar2-week-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3 [
	identifier := 'calendar3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3Event [
	identifier := 'calendar3-event'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3EventFill [
	identifier := 'calendar3-event-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3Fill [
	identifier := 'calendar3-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3Range [
	identifier := 'calendar3-range'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3RangeFill [
	identifier := 'calendar3-range-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3Week [
	identifier := 'calendar3-week'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar3WeekFill [
	identifier := 'calendar3-week-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar4 [
	identifier := 'calendar4'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar4Event [
	identifier := 'calendar4-event'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar4Range [
	identifier := 'calendar4-range'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendar4Week [
	identifier := 'calendar4-week'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarCheck [
	identifier := 'calendar-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarCheckFill [
	identifier := 'calendar-check-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarDate [
	identifier := 'calendar-date'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarDateFill [
	identifier := 'calendar-date-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarDay [
	identifier := 'calendar-day'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarDayFill [
	identifier := 'calendar-day-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarEvent [
	identifier := 'calendar-event'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarEventFill [
	identifier := 'calendar-event-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarFill [
	identifier := 'calendar-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarMinus [
	identifier := 'calendar-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarMinusFill [
	identifier := 'calendar-minus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarMonth [
	identifier := 'calendar-month'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarMonthFill [
	identifier := 'calendar-month-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarPlus [
	identifier := 'calendar-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarPlusFill [
	identifier := 'calendar-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarRange [
	identifier := 'calendar-range'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarRangeFill [
	identifier := 'calendar-range-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarWeek [
	identifier := 'calendar-week'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> calendarWeekFill [
	identifier := 'calendar-week-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> camera [
	identifier := 'camera'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> camera2 [
	identifier := 'camera2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cameraFill [
	identifier := 'camera-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cameraReels [
	identifier := 'camera-reels'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cameraReelsFill [
	identifier := 'camera-reels-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cameraVideo [
	identifier := 'camera-video'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cameraVideoFill [
	identifier := 'camera-video-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cameraVideoOff [
	identifier := 'camera-video-off'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cameraVideoOffFill [
	identifier := 'camera-video-off-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> capslock [
	identifier := 'capslock'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> capslockFill [
	identifier := 'capslock-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cardChecklist [
	identifier := 'card-checklist'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cardHeading [
	identifier := 'card-heading'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cardImage [
	identifier := 'card-image'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cardList [
	identifier := 'card-list'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cardText [
	identifier := 'card-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretDown [
	identifier := 'caret-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretDownFill [
	identifier := 'caret-down-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretDownSquare [
	identifier := 'caret-down-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretDownSquareFill [
	identifier := 'caret-down-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretLeft [
	identifier := 'caret-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretLeftFill [
	identifier := 'caret-left-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretLeftSquare [
	identifier := 'caret-left-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretLeftSquareFill [
	identifier := 'caret-left-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretRight [
	identifier := 'caret-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretRightFill [
	identifier := 'caret-right-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretRightSquare [
	identifier := 'caret-right-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretRightSquareFill [
	identifier := 'caret-right-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretUp [
	identifier := 'caret-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretUpFill [
	identifier := 'caret-up-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretUpSquare [
	identifier := 'caret-up-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> caretUpSquareFill [
	identifier := 'caret-up-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cart [
	identifier := 'cart'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cart2 [
	identifier := 'cart2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cart3 [
	identifier := 'cart3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cart4 [
	identifier := 'cart4'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cartCheck [
	identifier := 'cart-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cartDash [
	identifier := 'cart-dash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cartFill [
	identifier := 'cart-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cartPlus [
	identifier := 'cart-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cash [
	identifier := 'cash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cashStack [
	identifier := 'cash-stack'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cast [
	identifier := 'cast'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chat [
	identifier := 'chat'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatDots [
	identifier := 'chat-dots'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatDotsFill [
	identifier := 'chat-dots-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatFill [
	identifier := 'chat-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeft [
	identifier := 'chat-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeftDots [
	identifier := 'chat-left-dots'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeftDotsFill [
	identifier := 'chat-left-dots-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeftFill [
	identifier := 'chat-left-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeftQuote [
	identifier := 'chat-left-quote'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeftQuoteFill [
	identifier := 'chat-left-quote-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeftText [
	identifier := 'chat-left-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatLeftTextFill [
	identifier := 'chat-left-text-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatQuote [
	identifier := 'chat-quote'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatQuoteFill [
	identifier := 'chat-quote-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRight [
	identifier := 'chat-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRightDots [
	identifier := 'chat-right-dots'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRightDotsFill [
	identifier := 'chat-right-dots-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRightFill [
	identifier := 'chat-right-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRightQuote [
	identifier := 'chat-right-quote'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRightQuoteFill [
	identifier := 'chat-right-quote-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRightText [
	identifier := 'chat-right-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatRightTextFill [
	identifier := 'chat-right-text-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquare [
	identifier := 'chat-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquareDots [
	identifier := 'chat-square-dots'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquareDotsFill [
	identifier := 'chat-square-dots-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquareFill [
	identifier := 'chat-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquareQuote [
	identifier := 'chat-square-quote'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquareQuoteFill [
	identifier := 'chat-square-quote-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquareText [
	identifier := 'chat-square-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatSquareTextFill [
	identifier := 'chat-square-text-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatText [
	identifier := 'chat-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chatTextFill [
	identifier := 'chat-text-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> check [
	identifier := 'check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> check2 [
	identifier := 'check2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> check2All [
	identifier := 'check2-all'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> check2Circle [
	identifier := 'check2-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> check2Square [
	identifier := 'check2-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> checkAll [
	identifier := 'check-all'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> checkCircle [
	identifier := 'check-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> checkCircleFill [
	identifier := 'check-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> checkSquare [
	identifier := 'check-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> checkSquareFill [
	identifier := 'check-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronBarContract [
	identifier := 'chevron-bar-contract'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronBarDown [
	identifier := 'chevron-bar-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronBarExpand [
	identifier := 'chevron-bar-expand'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronBarLeft [
	identifier := 'chevron-bar-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronBarRight [
	identifier := 'chevron-bar-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronBarUp [
	identifier := 'chevron-bar-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronCompactDown [
	identifier := 'chevron-compact-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronCompactLeft [
	identifier := 'chevron-compact-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronCompactRight [
	identifier := 'chevron-compact-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronCompactUp [
	identifier := 'chevron-compact-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronContract [
	identifier := 'chevron-contract'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronDoubleDown [
	identifier := 'chevron-double-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronDoubleLeft [
	identifier := 'chevron-double-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronDoubleRight [
	identifier := 'chevron-double-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronDoubleUp [
	identifier := 'chevron-double-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronDown [
	identifier := 'chevron-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronExpand [
	identifier := 'chevron-expand'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronLeft [
	identifier := 'chevron-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronRight [
	identifier := 'chevron-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> chevronUp [
	identifier := 'chevron-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> circle [
	identifier := 'circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> circleFill [
	identifier := 'circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> circleHalf [
	identifier := 'circle-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> circleSquare [
	identifier := 'circle-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clipboard [
	identifier := 'clipboard'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clipboardCheck [
	identifier := 'clipboard-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clipboardData [
	identifier := 'clipboard-data'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clipboardMinus [
	identifier := 'clipboard-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clipboardPlus [
	identifier := 'clipboard-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clock [
	identifier := 'clock'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clockFill [
	identifier := 'clock-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> clockHistory [
	identifier := 'clock-history'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloud [
	identifier := 'cloud'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudArrowDown [
	identifier := 'cloud-arrow-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudArrowDownFill [
	identifier := 'cloud-arrow-down-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudArrowUp [
	identifier := 'cloud-arrow-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudArrowUpFill [
	identifier := 'cloud-arrow-up-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudCheck [
	identifier := 'cloud-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudCheckFill [
	identifier := 'cloud-check-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudDownload [
	identifier := 'cloud-download'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudDownloadFill [
	identifier := 'cloud-download-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudFill [
	identifier := 'cloud-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudMinus [
	identifier := 'cloud-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudMinusFill [
	identifier := 'cloud-minus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudPlus [
	identifier := 'cloud-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudPlusFill [
	identifier := 'cloud-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudSlash [
	identifier := 'cloud-slash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudSlashFill [
	identifier := 'cloud-slash-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudUpload [
	identifier := 'cloud-upload'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cloudUploadFill [
	identifier := 'cloud-upload-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> code [
	identifier := 'code'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> codeSlash [
	identifier := 'code-slash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> codeSquare [
	identifier := 'code-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> collection [
	identifier := 'collection'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> collectionFill [
	identifier := 'collection-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> collectionPlay [
	identifier := 'collection-play'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> collectionPlayFill [
	identifier := 'collection-play-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> columns [
	identifier := 'columns'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> columnsGap [
	identifier := 'columns-gap'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> command [
	identifier := 'command'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> compass [
	identifier := 'compass'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cone [
	identifier := 'cone'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> coneStriped [
	identifier := 'cone-striped'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> controller [
	identifier := 'controller'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cpu [
	identifier := 'cpu'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cpuFill [
	identifier := 'cpu-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> creditCard [
	identifier := 'credit-card'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> creditCard2Back [
	identifier := 'credit-card-2-back'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> creditCard2BackFill [
	identifier := 'credit-card-2-back-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> creditCard2Front [
	identifier := 'credit-card-2-front'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> creditCard2FrontFill [
	identifier := 'credit-card-2-front-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> creditCardFill [
	identifier := 'credit-card-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> crop [
	identifier := 'crop'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cup [
	identifier := 'cup'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cupStraw [
	identifier := 'cup-straw'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cursor [
	identifier := 'cursor'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cursorFill [
	identifier := 'cursor-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> cursorText [
	identifier := 'cursor-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dash [
	identifier := 'dash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dashCircle [
	identifier := 'dash-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dashCircleFill [
	identifier := 'dash-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dashSquare [
	identifier := 'dash-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dashSquareFill [
	identifier := 'dash-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #private }
SBSIconTag >> defineClassFromIdentifier [
	self class: 'bi'.
	self embedded
		ifTrue: [ 
			self attributeAt: 'viewBox' put: '0 0 20 20'.
			self attributeAt: 'xmlns' put: 'http://www.w3.org/2000/svg'.
			 ]
		ifFalse: [ self class: 'bi-' , identifier ].
	
]

{ #category : #icons }
SBSIconTag >> diagram2 [
	identifier := 'diagram-2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> diagram2Fill [
	identifier := 'diagram-2-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> diagram3 [
	identifier := 'diagram-3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> diagram3Fill [
	identifier := 'diagram-3-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> diamond [
	identifier := 'diamond'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> diamondFill [
	identifier := 'diamond-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> diamondHalf [
	identifier := 'diamond-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice1 [
	identifier := 'dice-1'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice1Fill [
	identifier := 'dice-1-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice2 [
	identifier := 'dice-2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice2Fill [
	identifier := 'dice-2-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice3 [
	identifier := 'dice-3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice3Fill [
	identifier := 'dice-3-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice4 [
	identifier := 'dice-4'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice4Fill [
	identifier := 'dice-4-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice5 [
	identifier := 'dice-5'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice5Fill [
	identifier := 'dice-5-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice6 [
	identifier := 'dice-6'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dice6Fill [
	identifier := 'dice-6-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> display [
	identifier := 'display'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> displayFill [
	identifier := 'display-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> distributeHorizontal [
	identifier := 'distribute-horizontal'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> distributeVertical [
	identifier := 'distribute-vertical'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> doorClosed [
	identifier := 'door-closed'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> doorClosedFill [
	identifier := 'door-closed-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> doorOpen [
	identifier := 'door-open'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> doorOpenFill [
	identifier := 'door-open-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dot [
	identifier := 'dot'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> download [
	identifier := 'download'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> droplet [
	identifier := 'droplet'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dropletFill [
	identifier := 'droplet-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> dropletHalf [
	identifier := 'droplet-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> earbuds [
	identifier := 'earbuds'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> easel [
	identifier := 'easel'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> easelFill [
	identifier := 'easel-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> egg [
	identifier := 'egg'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eggFill [
	identifier := 'egg-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eggFried [
	identifier := 'egg-fried'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eject [
	identifier := 'eject'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> ejectFill [
	identifier := 'eject-fill'.
	self defineClassFromIdentifier
]

{ #category : #accessing }
SBSIconTag >> embedded [
	^ embedded ifNil: [ embedded := false "self class usesSprites not" ]
]

{ #category : #icons }
SBSIconTag >> emojiAngry [
	identifier := 'emoji-angry'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiDizzy [
	identifier := 'emoji-dizzy'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiExpressionless [
	identifier := 'emoji-expressionless'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiFrown [
	identifier := 'emoji-frown'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiLaughing [
	identifier := 'emoji-laughing'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiNeutral [
	identifier := 'emoji-neutral'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiSmile [
	identifier := 'emoji-smile'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiSmileUpsideDown [
	identifier := 'emoji-smile-upside-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> emojiSunglasses [
	identifier := 'emoji-sunglasses'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> envelope [
	identifier := 'envelope'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> envelopeFill [
	identifier := 'envelope-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> envelopeOpen [
	identifier := 'envelope-open'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> envelopeOpenFill [
	identifier := 'envelope-open-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamation [
	identifier := 'exclamation'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationCircle [
	identifier := 'exclamation-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationCircleFill [
	identifier := 'exclamation-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationDiamond [
	identifier := 'exclamation-diamond'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationDiamondFill [
	identifier := 'exclamation-diamond-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationOctagon [
	identifier := 'exclamation-octagon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationOctagonFill [
	identifier := 'exclamation-octagon-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationSquare [
	identifier := 'exclamation-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationSquareFill [
	identifier := 'exclamation-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationTriangle [
	identifier := 'exclamation-triangle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclamationTriangleFill [
	identifier := 'exclamation-triangle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> exclude [
	identifier := 'exclude'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eye [
	identifier := 'eye'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eyeFill [
	identifier := 'eye-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eyeSlash [
	identifier := 'eye-slash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eyeSlashFill [
	identifier := 'eye-slash-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> eyeglasses [
	identifier := 'eyeglasses'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> file [
	identifier := 'file'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileArrowDown [
	identifier := 'file-arrow-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileArrowDownFill [
	identifier := 'file-arrow-down-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileArrowUp [
	identifier := 'file-arrow-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileArrowUpFill [
	identifier := 'file-arrow-up-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileBinary [
	identifier := 'file-binary'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileBinaryFill [
	identifier := 'file-binary-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileBreak [
	identifier := 'file-break'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileBreakFill [
	identifier := 'file-break-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileCheck [
	identifier := 'file-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileCheckFill [
	identifier := 'file-check-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileCode [
	identifier := 'file-code'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileCodeFill [
	identifier := 'file-code-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileDiff [
	identifier := 'file-diff'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileDiffFill [
	identifier := 'file-diff-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmark [
	identifier := 'file-earmark'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkArrowDown [
	identifier := 'file-earmark-arrow-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkArrowUp [
	identifier := 'file-earmark-arrow-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkArrowUpFill [
	identifier := 'file-earmark-arrow-up-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkBinary [
	identifier := 'file-earmark-binary'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkBinaryFill [
	identifier := 'file-earmark-binary-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkBreak [
	identifier := 'file-earmark-break'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkBreakFill [
	identifier := 'file-earmark-break-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkCheck [
	identifier := 'file-earmark-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkCheckFill [
	identifier := 'file-earmark-check-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkCode [
	identifier := 'file-earmark-code'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkCodeFill [
	identifier := 'file-earmark-code-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkDiff [
	identifier := 'file-earmark-diff'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkDiffFill [
	identifier := 'file-earmark-diff-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkFill [
	identifier := 'file-earmark-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkMedical [
	identifier := 'file-earmark-medical'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkMedicalFill [
	identifier := 'file-earmark-medical-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkMinus [
	identifier := 'file-earmark-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkMinusFill [
	identifier := 'file-earmark-minus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkPlus [
	identifier := 'file-earmark-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkPlusFill [
	identifier := 'file-earmark-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkRuled [
	identifier := 'file-earmark-ruled'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkRuledFill [
	identifier := 'file-earmark-ruled-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkSpreadsheet [
	identifier := 'file-earmark-spreadsheet'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkSpreadsheetFill [
	identifier := 'file-earmark-spreadsheet-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkText [
	identifier := 'file-earmark-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkTextFill [
	identifier := 'file-earmark-text-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkZip [
	identifier := 'file-earmark-zip'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileEarmarkZipFill [
	identifier := 'file-earmark-zip-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileFill [
	identifier := 'file-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileMedical [
	identifier := 'file-medical'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileMedicalFill [
	identifier := 'file-medical-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileMinus [
	identifier := 'file-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileMinusFill [
	identifier := 'file-minus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileMusic [
	identifier := 'file-music'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileMusicFill [
	identifier := 'file-music-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filePerson [
	identifier := 'file-person'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filePersonFill [
	identifier := 'file-person-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filePlus [
	identifier := 'file-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filePlusFill [
	identifier := 'file-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filePost [
	identifier := 'file-post'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filePostFill [
	identifier := 'file-post-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileRichtext [
	identifier := 'file-richtext'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileRichtextFill [
	identifier := 'file-richtext-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileRuled [
	identifier := 'file-ruled'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileRuledFill [
	identifier := 'file-ruled-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileSpreadsheet [
	identifier := 'file-spreadsheet'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileSpreadsheetFill [
	identifier := 'file-spreadsheet-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileText [
	identifier := 'file-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileTextFill [
	identifier := 'file-text-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileZip [
	identifier := 'file-zip'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fileZipFill [
	identifier := 'file-zip-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> files [
	identifier := 'files'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filesAlt [
	identifier := 'files-alt'.
	self defineClassFromIdentifier
]

{ #category : #attributes }
SBSIconTag >> fill: anObject [
	self attributeAt: 'fill' put: anObject
]

{ #category : #icons }
SBSIconTag >> film [
	identifier := 'film'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filter [
	identifier := 'filter'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filterCircle [
	identifier := 'filter-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filterCircleFill [
	identifier := 'filter-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filterLeft [
	identifier := 'filter-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filterRight [
	identifier := 'filter-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filterSquare [
	identifier := 'filter-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> filterSquareFill [
	identifier := 'filter-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> flag [
	identifier := 'flag'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> flagFill [
	identifier := 'flag-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> flower1 [
	identifier := 'flower1'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> flower2 [
	identifier := 'flower2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> flower3 [
	identifier := 'flower3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folder [
	identifier := 'folder'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folder2 [
	identifier := 'folder2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folder2Open [
	identifier := 'folder2-open'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folderCheck [
	identifier := 'folder-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folderFill [
	identifier := 'folder-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folderMinus [
	identifier := 'folder-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folderPlus [
	identifier := 'folder-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folderSymlink [
	identifier := 'folder-symlink'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> folderSymlinkFill [
	identifier := 'folder-symlink-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fonts [
	identifier := 'fonts'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> forward [
	identifier := 'forward'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> forwardFill [
	identifier := 'forward-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> front [
	identifier := 'front'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fullscreen [
	identifier := 'fullscreen'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> fullscreenExit [
	identifier := 'fullscreen-exit'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> funnel [
	identifier := 'funnel'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> funnelFill [
	identifier := 'funnel-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gear [
	identifier := 'gear'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gearFill [
	identifier := 'gear-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gearWide [
	identifier := 'gear-wide'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gearWideConnected [
	identifier := 'gear-wide-connected'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gem [
	identifier := 'gem'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> geo [
	identifier := 'geo'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> geoAlt [
	identifier := 'geo-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gift [
	identifier := 'gift'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> giftFill [
	identifier := 'gift-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> globe [
	identifier := 'globe'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> globe2 [
	identifier := 'globe2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> graphDown [
	identifier := 'graph-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> graphUp [
	identifier := 'graph-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid [
	identifier := 'grid'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid1x2 [
	identifier := 'grid-1x2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid1x2Fill [
	identifier := 'grid-1x2-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid3x2 [
	identifier := 'grid-3x2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid3x2Gap [
	identifier := 'grid-3x2-gap'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid3x2GapFill [
	identifier := 'grid-3x2-gap-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid3x3 [
	identifier := 'grid-3x3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid3x3Gap [
	identifier := 'grid-3x3-gap'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> grid3x3GapFill [
	identifier := 'grid-3x3-gap-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gridFill [
	identifier := 'grid-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gripHorizontal [
	identifier := 'grip-horizontal'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> gripVertical [
	identifier := 'grip-vertical'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hammer [
	identifier := 'hammer'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> handIndex [
	identifier := 'hand-index'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> handIndexThumb [
	identifier := 'hand-index-thumb'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> handThumbsDown [
	identifier := 'hand-thumbs-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> handThumbsUp [
	identifier := 'hand-thumbs-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> handbag [
	identifier := 'handbag'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> handbagFill [
	identifier := 'handbag-fill'.
	self defineClassFromIdentifier
]

{ #category : #'icons-special' }
SBSIconTag >> hashIcon [
	identifier := 'hash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hdd [
	identifier := 'hdd'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hddFill [
	identifier := 'hdd-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hddNetwork [
	identifier := 'hdd-network'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hddNetworkFill [
	identifier := 'hdd-network-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hddRack [
	identifier := 'hdd-rack'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hddRackFill [
	identifier := 'hdd-rack-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hddStack [
	identifier := 'hdd-stack'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hddStackFill [
	identifier := 'hdd-stack-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> headphones [
	identifier := 'headphones'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> headset [
	identifier := 'headset'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> heart [
	identifier := 'heart'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> heartFill [
	identifier := 'heart-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> heartHalf [
	identifier := 'heart-half'.
	self defineClassFromIdentifier
]

{ #category : #attributes }
SBSIconTag >> height: anObject [
	self attributeAt: 'height' put: anObject
]

{ #category : #icons }
SBSIconTag >> heptagon [
	identifier := 'heptagon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> heptagonFill [
	identifier := 'heptagon-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> heptagonHalf [
	identifier := 'heptagon-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hexagon [
	identifier := 'hexagon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hexagonFill [
	identifier := 'hexagon-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hexagonHalf [
	identifier := 'hexagon-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hourglass [
	identifier := 'hourglass'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hourglassBottom [
	identifier := 'hourglass-bottom'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hourglassSplit [
	identifier := 'hourglass-split'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hourglassTop [
	identifier := 'hourglass-top'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> house [
	identifier := 'house'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> houseDoor [
	identifier := 'house-door'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> houseDoorFill [
	identifier := 'house-door-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> houseFill [
	identifier := 'house-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> hr [
	identifier := 'hr'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> image [
	identifier := 'image'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> imageAlt [
	identifier := 'image-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> imageFill [
	identifier := 'image-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> images [
	identifier := 'images'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> inbox [
	identifier := 'inbox'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> inboxFill [
	identifier := 'inbox-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> inboxes [
	identifier := 'inboxes'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> inboxesFill [
	identifier := 'inboxes-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> info [
	identifier := 'info'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> infoCircle [
	identifier := 'info-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> infoCircleFill [
	identifier := 'info-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> infoSquare [
	identifier := 'info-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> infoSquareFill [
	identifier := 'info-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #accessing }
SBSIconTag >> initialize [ 

	super initialize.
	self be32Size.
	self useCurrentColor.
]

{ #category : #icons }
SBSIconTag >> inputCursor [
	identifier := 'input-cursor'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> inputCursorText [
	identifier := 'input-cursor-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> intersect [
	identifier := 'intersect'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journal [
	identifier := 'journal'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalAlbum [
	identifier := 'journal-album'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalArrowDown [
	identifier := 'journal-arrow-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalArrowUp [
	identifier := 'journal-arrow-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalCheck [
	identifier := 'journal-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalCode [
	identifier := 'journal-code'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalMedical [
	identifier := 'journal-medical'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalMinus [
	identifier := 'journal-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalPlus [
	identifier := 'journal-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalRichtext [
	identifier := 'journal-richtext'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journalText [
	identifier := 'journal-text'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> journals [
	identifier := 'journals'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> joystick [
	identifier := 'joystick'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> justify [
	identifier := 'justify'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> justifyLeft [
	identifier := 'justify-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> justifyRight [
	identifier := 'justify-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> kanban [
	identifier := 'kanban'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> kanbanFill [
	identifier := 'kanban-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> key [
	identifier := 'key'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> keyFill [
	identifier := 'key-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> keyboard [
	identifier := 'keyboard'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> keyboardFill [
	identifier := 'keyboard-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> ladder [
	identifier := 'ladder'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> lamp [
	identifier := 'lamp'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> lampFill [
	identifier := 'lamp-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> laptop [
	identifier := 'laptop'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> laptopFill [
	identifier := 'laptop-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layers [
	identifier := 'layers'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layersFill [
	identifier := 'layers-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layersHalf [
	identifier := 'layers-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutSidebar [
	identifier := 'layout-sidebar'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutSidebarInset [
	identifier := 'layout-sidebar-inset'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutSidebarInsetReverse [
	identifier := 'layout-sidebar-inset-reverse'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutSidebarReverse [
	identifier := 'layout-sidebar-reverse'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutSplit [
	identifier := 'layout-split'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutTextSidebar [
	identifier := 'layout-text-sidebar'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutTextSidebarReverse [
	identifier := 'layout-text-sidebar-reverse'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutTextWindow [
	identifier := 'layout-text-window'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutTextWindowReverse [
	identifier := 'layout-text-window-reverse'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutThreeColumns [
	identifier := 'layout-three-columns'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> layoutWtf [
	identifier := 'layout-wtf'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> lifePreserver [
	identifier := 'life-preserver'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> lightning [
	identifier := 'lightning'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> lightningFill [
	identifier := 'lightning-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> link [
	identifier := 'link'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> link45deg [
	identifier := 'link-45deg'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> list [
	identifier := 'list'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> listCheck [
	identifier := 'list-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> listNested [
	identifier := 'list-nested'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> listOl [
	identifier := 'list-ol'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> listStars [
	identifier := 'list-stars'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> listTask [
	identifier := 'list-task'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> listUl [
	identifier := 'list-ul'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> lock [
	identifier := 'lock'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> lockFill [
	identifier := 'lock-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> mailbox [
	identifier := 'mailbox'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> mailbox2 [
	identifier := 'mailbox2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> map [
	identifier := 'map'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> markdown [
	identifier := 'markdown'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> markdownFill [
	identifier := 'markdown-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuApp [
	identifier := 'menu-app'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuAppFill [
	identifier := 'menu-app-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuButton [
	identifier := 'menu-button'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuButtonFill [
	identifier := 'menu-button-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuButtonWide [
	identifier := 'menu-button-wide'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuButtonWideFill [
	identifier := 'menu-button-wide-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuDown [
	identifier := 'menu-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> menuUp [
	identifier := 'menu-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> mic [
	identifier := 'mic'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> micFill [
	identifier := 'mic-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> micMute [
	identifier := 'mic-mute'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> micMuteFill [
	identifier := 'mic-mute-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> minecart [
	identifier := 'minecart'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> minecartLoaded [
	identifier := 'minecart-loaded'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> moon [
	identifier := 'moon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> mouse [
	identifier := 'mouse'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> mouse2 [
	identifier := 'mouse2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> mouse3 [
	identifier := 'mouse3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> musicNote [
	identifier := 'music-note'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> musicNoteBeamed [
	identifier := 'music-note-beamed'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> musicNoteList [
	identifier := 'music-note-list'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> musicPlayer [
	identifier := 'music-player'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> musicPlayerFill [
	identifier := 'music-player-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> newspaper [
	identifier := 'newspaper'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> nodeMinus [
	identifier := 'node-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> nodeMinusFill [
	identifier := 'node-minus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> nodePlus [
	identifier := 'node-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> nodePlusFill [
	identifier := 'node-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> nut [
	identifier := 'nut'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> nutFill [
	identifier := 'nut-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> octagon [
	identifier := 'octagon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> octagonFill [
	identifier := 'octagon-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> octagonHalf [
	identifier := 'octagon-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> option [
	identifier := 'option'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> outlet [
	identifier := 'outlet'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> paperclip [
	identifier := 'paperclip'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> paragraph [
	identifier := 'paragraph'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchCheck [
	identifier := 'patch-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchCheckFll [
	identifier := 'patch-check-fll'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchExclamation [
	identifier := 'patch-exclamation'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchExclamationFll [
	identifier := 'patch-exclamation-fll'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchMinus [
	identifier := 'patch-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchMinusFll [
	identifier := 'patch-minus-fll'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchPlus [
	identifier := 'patch-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchPlusFll [
	identifier := 'patch-plus-fll'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchQuestion [
	identifier := 'patch-question'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> patchQuestionFll [
	identifier := 'patch-question-fll'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pause [
	identifier := 'pause'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pauseFill [
	identifier := 'pause-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> peace [
	identifier := 'peace'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> peaceFill [
	identifier := 'peace-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pen [
	identifier := 'pen'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pencil [
	identifier := 'pencil'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pencilSquare [
	identifier := 'pencil-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pentagon [
	identifier := 'pentagon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pentagonFill [
	identifier := 'pentagon-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pentagonHalf [
	identifier := 'pentagon-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> people [
	identifier := 'people'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> peopleFill [
	identifier := 'people-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> percent [
	identifier := 'percent'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> person [
	identifier := 'person'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personBadge [
	identifier := 'person-badge'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personBadgeFill [
	identifier := 'person-badge-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personBoundingBox [
	identifier := 'person-bounding-box'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personCheck [
	identifier := 'person-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personCheckFill [
	identifier := 'person-check-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personCircle [
	identifier := 'person-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personDash [
	identifier := 'person-dash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personDashFill [
	identifier := 'person-dash-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personFill [
	identifier := 'person-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personLinesFill [
	identifier := 'person-lines-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personPlus [
	identifier := 'person-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personPlusFill [
	identifier := 'person-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> personSquare [
	identifier := 'person-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> phone [
	identifier := 'phone'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> phoneFill [
	identifier := 'phone-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> phoneLandscape [
	identifier := 'phone-landscape'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> phoneLandscapeFill [
	identifier := 'phone-landscape-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pieChart [
	identifier := 'pie-chart'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pieChartFill [
	identifier := 'pie-chart-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pip [
	identifier := 'pip'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> pipFill [
	identifier := 'pip-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> play [
	identifier := 'play'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> playFill [
	identifier := 'play-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> plug [
	identifier := 'plug'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> plus [
	identifier := 'plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> plusCircle [
	identifier := 'plus-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> plusCircleFill [
	identifier := 'plus-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> plusSquare [
	identifier := 'plus-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> plusSquareFill [
	identifier := 'plus-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> power [
	identifier := 'power'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> printer [
	identifier := 'printer'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> printerFill [
	identifier := 'printer-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> puzzle [
	identifier := 'puzzle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> puzzleFill [
	identifier := 'puzzle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> question [
	identifier := 'question'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionCircle [
	identifier := 'question-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionCircleFill [
	identifier := 'question-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionDiamond [
	identifier := 'question-diamond'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionDiamondFill [
	identifier := 'question-diamond-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionOctagon [
	identifier := 'question-octagon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionOctagonFill [
	identifier := 'question-octagon-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionSquare [
	identifier := 'question-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> questionSquareFill [
	identifier := 'question-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> receipt [
	identifier := 'receipt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> receiptCutoff [
	identifier := 'receipt-cutoff'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> reception0 [
	identifier := 'reception-0'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> reception1 [
	identifier := 'reception-1'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> reception2 [
	identifier := 'reception-2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> reception3 [
	identifier := 'reception-3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> reception4 [
	identifier := 'reception-4'.
	self defineClassFromIdentifier
]

{ #category : #public }
SBSIconTag >> renderEmbeddedSVG [
	

]

{ #category : #public }
SBSIconTag >> renderUseTag [
	^ (canvas tag: 'use')
		attributeAt: 'xlink:href'
		put: (self class xlinkUrlFor: identifier)
]

{ #category : #icons }
SBSIconTag >> reply [
	identifier := 'reply'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> replyAll [
	identifier := 'reply-all'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> replyAllFill [
	identifier := 'reply-all-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> replyFill [
	identifier := 'reply-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> rss [
	identifier := 'rss'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> rssFill [
	identifier := 'rss-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> screwdriver [
	identifier := 'screwdriver'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> search [
	identifier := 'search'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> segmentedNav [
	identifier := 'segmented-nav'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> server [
	identifier := 'server'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> share [
	identifier := 'share'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shareFill [
	identifier := 'share-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shield [
	identifier := 'shield'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldCheck [
	identifier := 'shield-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldExclamation [
	identifier := 'shield-exclamation'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldFill [
	identifier := 'shield-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldFillCheck [
	identifier := 'shield-fill-check'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldFillExclamation [
	identifier := 'shield-fill-exclamation'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldFillMinus [
	identifier := 'shield-fill-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldFillPlus [
	identifier := 'shield-fill-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldLock [
	identifier := 'shield-lock'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldLockFill [
	identifier := 'shield-lock-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldMinus [
	identifier := 'shield-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldPlus [
	identifier := 'shield-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldShaded [
	identifier := 'shield-shaded'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldSlash [
	identifier := 'shield-slash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shieldSlashFill [
	identifier := 'shield-slash-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shift [
	identifier := 'shift'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shiftFill [
	identifier := 'shift-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shop [
	identifier := 'shop'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shopWindow [
	identifier := 'shop-window'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> shuffle [
	identifier := 'shuffle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> signpost [
	identifier := 'signpost'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> signpost2 [
	identifier := 'signpost-2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> signpost2Fill [
	identifier := 'signpost-2-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> signpostFill [
	identifier := 'signpost-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> signpostSplit [
	identifier := 'signpost-split'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> signpostSplitFill [
	identifier := 'signpost-split-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sim [
	identifier := 'sim'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> simFill [
	identifier := 'sim-fill'.
	self defineClassFromIdentifier
]

{ #category : #configuring }
SBSIconTag >> size: anObject [
	"Sets receiver size to be of anObject width and height.
	anObject can be any CSS valid unit. E.g. '32px', '1em', etc.	"
		
	self width: anObject.
	self height: anObject
]

{ #category : #icons }
SBSIconTag >> skipBackward [
	identifier := 'skip-backward'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> skipBackwardFill [
	identifier := 'skip-backward-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> skipEnd [
	identifier := 'skip-end'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> skipEndFill [
	identifier := 'skip-end-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> skipForward [
	identifier := 'skip-forward'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> skipForwardFill [
	identifier := 'skip-forward-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> skipStart [
	identifier := 'skip-start'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> skipStartFill [
	identifier := 'skip-start-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> slash [
	identifier := 'slash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> slashCircle [
	identifier := 'slash-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> slashCircleFill [
	identifier := 'slash-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> slashSquare [
	identifier := 'slash-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> slashSquareFill [
	identifier := 'slash-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sliders [
	identifier := 'sliders'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> smartwatch [
	identifier := 'smartwatch'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortAlphaDown [
	identifier := 'sort-alpha-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortAlphaDownAlt [
	identifier := 'sort-alpha-down-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortAlphaUp [
	identifier := 'sort-alpha-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortAlphaUpAlt [
	identifier := 'sort-alpha-up-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortDown [
	identifier := 'sort-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortDownAlt [
	identifier := 'sort-down-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortNumericDown [
	identifier := 'sort-numeric-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortNumericDownAlt [
	identifier := 'sort-numeric-down-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortNumericUp [
	identifier := 'sort-numeric-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortNumericUpAlt [
	identifier := 'sort-numeric-up-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortUp [
	identifier := 'sort-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sortUpAlt [
	identifier := 'sort-up-alt'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> soundwave [
	identifier := 'soundwave'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> speaker [
	identifier := 'speaker'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> spellcheck [
	identifier := 'spellcheck'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> square [
	identifier := 'square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> squareFill [
	identifier := 'square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> squareHalf [
	identifier := 'square-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> star [
	identifier := 'star'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> starFill [
	identifier := 'star-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> starHalf [
	identifier := 'star-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stickies [
	identifier := 'stickies'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stickiesFill [
	identifier := 'stickies-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sticky [
	identifier := 'sticky'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stickyFill [
	identifier := 'sticky-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stop [
	identifier := 'stop'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stopFill [
	identifier := 'stop-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stoplights [
	identifier := 'stoplights'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stoplightsFill [
	identifier := 'stoplights-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stopwatch [
	identifier := 'stopwatch'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> stopwatchFill [
	identifier := 'stopwatch-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> subtract [
	identifier := 'subtract'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitClub [
	identifier := 'suit-club'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitClubFill [
	identifier := 'suit-club-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitDiamond [
	identifier := 'suit-diamond'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitDiamondFill [
	identifier := 'suit-diamond-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitHeart [
	identifier := 'suit-heart'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitHeartFill [
	identifier := 'suit-heart-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitSpade [
	identifier := 'suit-spade'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> suitSpadeFill [
	identifier := 'suit-spade-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sun [
	identifier := 'sun'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> sunglasses [
	identifier := 'sunglasses'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> table [
	identifier := 'table'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tablet [
	identifier := 'tablet'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tabletFill [
	identifier := 'tablet-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tabletLandscape [
	identifier := 'tablet-landscape'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tabletLandscapeFill [
	identifier := 'tablet-landscape-fill'.
	self defineClassFromIdentifier
]

{ #category : #accessing }
SBSIconTag >> tag [

	^'svg'
]

{ #category : #icons }
SBSIconTag >> tagFill [
	identifier := 'tag-fill'.
	self defineClassFromIdentifier
]

{ #category : #'icons-special' }
SBSIconTag >> tagIcon [
	identifier := 'tag'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tags [
	identifier := 'tags'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tagsFill [
	identifier := 'tags-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephone [
	identifier := 'telephone'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneFill [
	identifier := 'telephone-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneForward [
	identifier := 'telephone-forward'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneForwardFill [
	identifier := 'telephone-forward-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneInbound [
	identifier := 'telephone-inbound'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneInboundFill [
	identifier := 'telephone-inbound-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneMinus [
	identifier := 'telephone-minus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneMinusFill [
	identifier := 'telephone-minus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneOutbound [
	identifier := 'telephone-outbound'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneOutboundFill [
	identifier := 'telephone-outbound-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephonePlus [
	identifier := 'telephone-plus'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephonePlusFill [
	identifier := 'telephone-plus-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneX [
	identifier := 'telephone-x'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> telephoneXFill [
	identifier := 'telephone-x-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> terminal [
	identifier := 'terminal'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> terminalFill [
	identifier := 'terminal-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textCenter [
	identifier := 'text-center'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textIndentLeft [
	identifier := 'text-indent-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textIndentRight [
	identifier := 'text-indent-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textLeft [
	identifier := 'text-left'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textRight [
	identifier := 'text-right'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textarea [
	identifier := 'textarea'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textareaResize [
	identifier := 'textarea-resize'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> textareaT [
	identifier := 'textarea-t'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> thermometer [
	identifier := 'thermometer'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> thermometerHalf [
	identifier := 'thermometer-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> threeDots [
	identifier := 'three-dots'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> threeDotsVertical [
	identifier := 'three-dots-vertical'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> toggle2Off [
	identifier := 'toggle2-off'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> toggle2On [
	identifier := 'toggle2-on'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> toggleOff [
	identifier := 'toggle-off'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> toggleOn [
	identifier := 'toggle-on'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> toggles [
	identifier := 'toggles'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> toggles2 [
	identifier := 'toggles2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tools [
	identifier := 'tools'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> trash [
	identifier := 'trash'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> trash2 [
	identifier := 'trash2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> trash2Fill [
	identifier := 'trash2-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> trashFill [
	identifier := 'trash-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tree [
	identifier := 'tree'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> treeFill [
	identifier := 'tree-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> triangle [
	identifier := 'triangle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> triangleFill [
	identifier := 'triangle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> triangleHalf [
	identifier := 'triangle-half'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> trophy [
	identifier := 'trophy'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> truck [
	identifier := 'truck'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> truckFlatbed [
	identifier := 'truck-flatbed'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tv [
	identifier := 'tv'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> tvFill [
	identifier := 'tv-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> type [
	identifier := 'type'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> typeBold [
	identifier := 'type-bold'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> typeH1 [
	identifier := 'type-h1'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> typeH2 [
	identifier := 'type-h2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> typeH3 [
	identifier := 'type-h3'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> typeItalic [
	identifier := 'type-italic'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> typeStrikethrough [
	identifier := 'type-strikethrough'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> typeUnderline [
	identifier := 'type-underline'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> uiChecks [
	identifier := 'ui-checks'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> uiRadios [
	identifier := 'ui-radios'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> union [
	identifier := 'union'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> unlock [
	identifier := 'unlock'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> unlockFill [
	identifier := 'unlock-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> upc [
	identifier := 'upc'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> upcScan [
	identifier := 'upc-scan'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> upload [
	identifier := 'upload'.
	self defineClassFromIdentifier
]

{ #category : #accessing }
SBSIconTag >> useCurrentColor [

	self fill: 'currentColor'
]

{ #category : #icons }
SBSIconTag >> viewList [
	identifier := 'view-list'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> viewStacked [
	identifier := 'view-stacked'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> voicemail [
	identifier := 'voicemail'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeDown [
	identifier := 'volume-down'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeDownFill [
	identifier := 'volume-down-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeMute [
	identifier := 'volume-mute'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeMuteFill [
	identifier := 'volume-mute-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeOff [
	identifier := 'volume-off'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeOffFill [
	identifier := 'volume-off-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeUp [
	identifier := 'volume-up'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> volumeUpFill [
	identifier := 'volume-up-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> vr [
	identifier := 'vr'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> wallet [
	identifier := 'wallet'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> wallet2 [
	identifier := 'wallet2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> walletFill [
	identifier := 'wallet-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> watch [
	identifier := 'watch'.
	self defineClassFromIdentifier
]

{ #category : #attributes }
SBSIconTag >> width: anObject [

	self attributeAt: 'width' put: anObject
]

{ #category : #icons }
SBSIconTag >> wifi [
	identifier := 'wifi'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> wifi1 [
	identifier := 'wifi-1'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> wifi2 [
	identifier := 'wifi-2'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> wifiOff [
	identifier := 'wifi-off'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> window [
	identifier := 'window'.
	self defineClassFromIdentifier
]

{ #category : #public }
SBSIconTag >> with: anObject [
	"Here we ignore the argument and use the predefined <use> tag."

	super
		with: [ self embedded
				ifTrue: [ self renderEmbeddedSVG ]
				ifFalse: [ self renderUseTag ] ]
]

{ #category : #icons }
SBSIconTag >> wrench [
	identifier := 'wrench'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> x [
	identifier := 'x'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xCircle [
	identifier := 'x-circle'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xCircleFill [
	identifier := 'x-circle-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xDiamond [
	identifier := 'x-diamond'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xDiamondFill [
	identifier := 'x-diamond-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xOctagon [
	identifier := 'x-octagon'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xOctagonFill [
	identifier := 'x-octagon-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xSquare [
	identifier := 'x-square'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> xSquareFill [
	identifier := 'x-square-fill'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> zoomIn [
	identifier := 'zoom-in'.
	self defineClassFromIdentifier
]

{ #category : #icons }
SBSIconTag >> zoomOut [
	identifier := 'zoom-out'.
	self defineClassFromIdentifier
]
