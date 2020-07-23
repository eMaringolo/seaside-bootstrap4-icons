"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestBootstrapIconsCore,
	#superclass : #PackageManifest,
	#category : #'Bootstrap4-Icons-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestBootstrapIconsCore class >> ruleAsClassRuleV1FalsePositive [
	^ #(#(#(#RGMetaclassDefinition #(#'SBSIconTag class' #SBSIconTag)) #'2020-07-22T23:34:46.735356-03:00') )
]

{ #category : #'code-critics' }
ManifestBootstrapIconsCore class >> ruleRBImplementedNotSentRuleV1FalsePositive [
	^ #(#(#(#RGMetaclassDefinition #(#'SBSIconTag class' #SBSIconTag)) #'2020-07-22T23:35:06.205356-03:00') )
]
