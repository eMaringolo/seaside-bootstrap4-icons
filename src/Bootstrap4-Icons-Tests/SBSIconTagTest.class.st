Class {
	#name : #SBSIconTagTest,
	#superclass : #SBSAbstractCanvasBrushTest,
	#instVars : [
		'previousXlinkBaseUrl',
		'previousBundlingSetting'
	],
	#category : #'Bootstrap4-Icons-Tests'
}

{ #category : #'tests-sources' }
SBSIconTagTest >> bundledIconFromBaseUrlSource [
	^ '<svg height="32" width="32" fill="currentColor" class="bi bi-alarm"><use xlink:href="/files/SBSIconsFileLibrary/bootstrap-icons.svg#alarm"></use></svg>'
]

{ #category : #'tests-sources' }
SBSIconTagTest >> individualIcon2emFromLibrarySource [
	^ '<svg height="2em" width="2em" fill="currentColor" class="bi bi-alarm"><use xlink:href="/files/SBSIconsFileLibrary/bootstrap-icons.svg#alarm"></use></svg>'
]

{ #category : #running }
SBSIconTagTest >> setUp [
	previousXlinkBaseUrl := SBSIconTag baseUrl.
	previousBundlingSetting := SBSIconTag usesSprites.
]

{ #category : #running }
SBSIconTagTest >> tearDown [
	SBSIconTag baseUrl: previousXlinkBaseUrl.
	SBSIconTag usesSprites: previousBundlingSetting
]

{ #category : #tests }
SBSIconTagTest >> testBundingDefaultFromLibrary [
	self useFileLibrary.
	SBSIconTag useSprites.
	self
		assert: [ :html | html icon alarm ]
		gives: self bundledIconFromBaseUrlSource
]

{ #category : #tests }
SBSIconTagTest >> testBundledIconFromLibrary [
	self useFileLibrary.
	self
		assert: [ :html | html icon beBundled alarm ]
		gives: self bundledIconFromBaseUrlSource
]

{ #category : #tests }
SBSIconTagTest >> testIconSize [
	SBSIconTag useFileLibrary.
	self
		assert: [ :html | html icon alarm size: '2em' ]
		gives: self individualIcon2emFromLibrarySource 
]

{ #category : #tests }
SBSIconTagTest >> useBaseUrl [
	SBSIconTag baseUrl: '/static/css/bootstrap4'
]

{ #category : #configuring }
SBSIconTagTest >> useFileLibrary [
	SBSIconTag useFileLibrary
]
