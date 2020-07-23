Class {
	#name : #SBSBootstrapIconsTestComponent,
	#superclass : #SBSComponent,
	#category : #'Bootstrap4-Icons-Examples'
}

{ #category : #'class initialization' }
SBSBootstrapIconsTestComponent class >> initialize [
	| app |
	WAAdmin unregister: 'bs4icons'.
	app := WAAdmin register: self asApplicationAt: 'bs4icons'.
	app addLibrary: JQDevelopmentLibrary.
	app addLibrary: SBSDeploymentLibrary
]

{ #category : #rendering }
SBSBootstrapIconsTestComponent >> renderContentOn: html [
	html heading: [ html icon calendar ]
]
