Class {
	#name : #BaselineOfBootstrap4Icons,
	#superclass : #BaselineOf,
	#category : #BaselineOfBootstrap4Icons
}

{ #category : #baselines }
BaselineOfBootstrap4Icons >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self bootstrap4: spec.
			spec
				package: 'Bootstrap4-Icons-Core' with: [ spec requires: #('Bootstrap4') ];
				package: 'Bootstrap4-Icons-Library'
					with: [ spec requires: #('Bootstrap4-Icons-Core') ];
				package: 'Bootstrap4-Icons-Tests'
					with: [ spec requires: #('Bootstrap4-Icons-Core') ];
				package: 'Bootstrap4-Icons-Examples'
					with: [ spec requires: #('Bootstrap4-Icons-Library') ].
			spec
				group: 'Core' with: #('Bootstrap4-Icons-Core');
				group: 'Tests' with: #('Bootstrap4-Icons-Tests');
				group: 'Library' with: #('Bootstrap4-Icons-Library');
				group: 'Examples' with: #('Bootstrap4-Icons-Examples');
				group: 'all' with: #('Library' 'Tests' 'Examples');
				group: 'default' with: #('all') ]
]

{ #category : #baselines }
BaselineOfBootstrap4Icons >> bootstrap4: spec [
	spec
		baseline: 'Bootstrap4'
		with: [ spec
				loads: #('default');
				repository: 'github:astares/Seaside-Bootstrap4/src' ]
]
