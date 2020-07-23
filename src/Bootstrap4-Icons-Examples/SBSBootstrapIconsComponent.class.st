Class {
	#name : #SBSBootstrapIconsComponent,
	#superclass : #SBSComponent,
	#category : #'Bootstrap4-Icons-Examples'
}

{ #category : #testing }
SBSBootstrapIconsComponent class >> canBeRoot [

	^true
]

{ #category : #testing }
SBSBootstrapIconsComponent class >> initialize [
	| app |
	WAAdmin unregister: 'bootstrapIcons'.
	app := WAAdmin register: self asApplicationAt: 'bootstrapIcons'.
	app addLibrary: JQDevelopmentLibrary.
	app addLibrary: SBSDeploymentLibrary
]

{ #category : #accessing }
SBSBootstrapIconsComponent >> iconSelectors [

	^(SBSIconTag methods select: [ :each | each protocol = 'icons' ] thenCollect: [ :each | each selector ]) asSortedCollection 
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderContentOn: html [
	self renderNavigationBarOn: html.
	self renderHeroOn: html.
	html main
		class: 'container';
		id: 'content';
		with: [ self renderIconsOn: html.
			self renderInstallationOn: html.
			self renderUsageOn: html.
			
	 ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderEmbeddedUsageOn: html [
	html row
		class: 'my-4';
		with: [ html column
				mediumSize: 4;
				with: [ html heading
						level3;
						id: 'embedded';
						with: [ html text: 'Embedded'.
							html space.
							html small: [ html badge beInfo with: 'Not done (yet)' ] ].
					html
						paragraph: [ html
								html:
									'Embed your icons within the HTML of your page (as opposed to an external image file). Here we’ve used a custom <code>width</code> and <code>height</code>.' ] ].
			html column
				mediumSize: 8;
				with: [ html div
						class: 'bd-example';
						with: [ html
								html:
									'<svg class="bi bi-chevron-right" width="32" height="32" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z"/></svg>' ].
					html div
						class: 'highlight';
						with:
								[ html preformatted: 'html icon beEmbedded chevronRight' ] ] ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderExternalImageUsageOn: html [
	html row
		class: 'my-4';
		with: [ html column
				mediumSize: 4;
				with: [ html heading
						level3;
						id: 'external-image';
						with: [ html text: 'External image'	].
					html
						paragraph: [ 
							html html: 'Link directly to the files in the <code>SBSIconsFileLibrary</code> or <code>SBSIcon>>baseUrl</code> from an <code>image</code> tag.'.
							html break.
							html
								html:
									'SVG sprites allow you to reference an external file similar to an <code>&lt;img&gt;</code> element, but with the power of <code>currentColor</code> for easy theming.' ] ].
			html column
				mediumSize: 8;
				with:  [ html div
						class: 'bd-example';
						with: [ html image bsIcon badgeHdFill; width: 32; height: 32 ].
					html div
						class: 'highlight';
						with: [ html
								preformatted: 'html image bsIcon badgeHdFill; width: 32; height: 32' ] ]  ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderHeroContentOn: html [
	html heading
		class: 'f0';
		with: [ html text: 'Bootstrap Icons'.
			html space.
			html emphasis: 'for Seaside' ].
	html paragraph
		class: 'mb-4 f3 font-weight-normal';
		with: [ html
				text:
					'For the first time ever, Bootstrap has its own icon library, custom designed and built for our components and documentation.'.
			html break.
			html
				text:
					'And as expected, there is a Seaside integration to use it from the confort of your objects.' ].
	html row textMuted
		with: [ html column small
				with: [ html
						paragraph: [ html text: 'Bootstrap Icons are designed to work with '.
							html anchor
								url: 'https://getbootstrap.com/';
								with: 'Bootstrap'.
							html
								text:
									' components, from form controls to navigation. Bootstrap Icons are SVGs, so they scale quickly and easily and can be styled with CSS. While they''re built for Bootstrap, they''ll work in any project.' ] ].
			html column small
				with: [ html
						paragraph: [ html
								text:
									'They''re open sourced (MIT), so you''re free to download, use, and extend. Heads up though, '.
							html strong: 'they''re in alpha right now'.
							html text: ' and subject to sweeping changes.' ] ] ].
	html horizontalRule class: 'my-4'.
	html paragraph textMuted
		with: [ html text: 'Currently v1.0.0-alpha5'.
			html span
				class: 'px-1';
				with: '•'.
			html anchor
				url: '#icons';
				with: 'Icons'.
			html span
				class: 'px-1';
				with: '•'.
			html anchor
				url: '#install';
				with: 'Install'.
			html span
				class: 'px-1';
				with: '•'.
			html anchor
				url: '#usage';
				with: 'Usage'.
			html span
				class: 'px-1';
				with: '•'.
			html anchor
				url: '#styling';
				with: 'Styling'.
			html span
				class: 'px-1';
				with: '•'.
			html anchor
				url: 'https://github.com/emaringolo/bootstrap4-icons';
				with: 'GitHub repo' ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderHeroOn: html [
	html div
		class: 'hero py-5';
		with: [ html container:
				[ self renderHeroContentOn: html ] ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderIcon: selector on: html [
	| tokens |
	tokens := self tokenizeSelector: selector.
	html listItem
		class: 'col mb-4';
		with: [ html anchor
				darkText;
				class: 'text-decoration-none d-block';
				with: [ html div
						class: 'bg-light p-3 py-4 mb-2 text-center rounded';
						with: [ html icon perform: selector ].
					html div
						class: 'name text-muted text-decoration-none text-center pt-1';
						with: [ html code: '#', selector.
							html break.
							html text: (Character space join: tokens).
							] ] ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderIconsOn: html [
html div
				class: 'my-5';
				with: [ html div
						with: [ html heading
								id: 'icons';
								level2;
								with: 'Icons'.
							html unorderedList
								class:
									'row row-cols-3 row-cols-sm-4 row-cols-lg-6 row-cols-xl-8 list-unstyled list';
								with: [ self iconSelectors do: [ :each | self renderIcon: each on: html ] ] ] ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderInstallationOn: html [
	html heading
						id: 'installation';
						level2;
						with: 'Installation'
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderNavigationBarOn: html [
	| bar |
	bar := html navigationBar.
	bar expandLarge.
	bar beLight.
	bar class: 'flex-column flex-md-row bd-navbar px-0'.
	bar
		with: [ html container
				class: 'container flex-wrap flex-md-nowrap py-0 px-3';
				with: [ html navigationBarBrand
						with: [ html image lightText bsIcon bootstrap.
							html span
								class: 'brand';
								lightText;
								with: [ html text: 'Bootstrap Icons'.
									html space.
									html emphasis: 'for Seaside' ] ] ] ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderSpriteUsageOn: html [
	html row
		class: 'my-4';
		with: [ html column
				mediumSize: 4;
				with: [ html heading
						level3;
						id: 'sprite';
						with: [ html text: 'Sprite'.
							html space.
							html small: [ html badge beSuccess with: 'Default' ] ].
					html
						paragraph: [ html
								html:
									'To use the SVG sprite, you simply call the icon brush method and it will include an <code>&lt;svg&gt;</code> tag together with a <code>&lt;use xlink:ref="..."&gt;</code> pointing to a bundle file with all icons and a fragment identifier the icon name.'.
							html break.
							html
								html:
									'SVG sprites allow you to reference an external file similar to an <code>&lt;img&gt;</code> element, but with the power of <code>currentColor</code> for easy theming.' ] ].
			html column
				mediumSize: 8;
				with: [ html div
						class: 'bd-example';
						with: [ html icon heartFill.
							html icon toggles.
							html icon shop ].
					html div
						class: 'highlight';
						with: [ html
								preformatted: 'html icon heartFill. html icon toggles. html icon shop.' ] ] ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderSylingUsageOn: html [
	html row
		class: 'my-4';
		with: [ html column
				mediumSize: 4;
				with: [ html heading
						level3;
						id: 'styling';
						with: [ html text: 'Styling'	].
					html
						paragraph: [ 
							html html: 'Color can be changed by setting a <code>text-*</code> class (via <code>*text</code> kind of messages) or custom CSS: '.			] ].
			html column
				mediumSize: 8;
				with: [ html div
						class: 'bd-example';
						with: [ html icon successText batteryFull. html space. html icon warningText batteryHalf].
					html div
						class: 'highlight';
						with: [ html
								preformatted: 'html icon successText batteryFull. html icon warningText batteryHalf' ] ] ]
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> renderUsageOn: html [
	html heading
		level2;
		id: 'usage';
		with: 'Usage'.
	self renderEmbeddedUsageOn: html.
	self renderSpriteUsageOn: html.
	self renderExternalImageUsageOn: html.
	self renderSylingUsageOn: html
]

{ #category : #rendering }
SBSBootstrapIconsComponent >> style [
	^ '
.btn-bd-primary{font-weight:600;color:#7952b3;border-color:#7952b3}.btn-bd-primary:hover,.btn-bd-primary:active{color:#fff;background-color:#7952b3;border-color:#7952b3}.btn-bd-primary:focus{box-shadow:0 0 0 3px rgba(121,82,179,0.25)}.btn-bd-download{font-weight:600;color:#ffe484;border-color:#ffe484}.btn-bd-download:hover,.btn-bd-download:active{color:#2a2730;background-color:#ffe484;border-color:#ffe484}.btn-bd-download:focus{box-shadow:0 0 0 3px rgba(255,228,132,0.25)}.bd-clipboard{position:relative;display:none;float:right}.bd-clipboard+.highlight{margin-top:0}@media (min-width: 768px){.bd-clipboard{display:block}}.btn-clipboard{position:absolute;top:.5rem;right:.5rem;z-index:10;display:block;padding:.25rem .5rem;font-size:.75em;color:#0d6efd;background-color:#fff;border:1px solid;border-radius:.25rem}.btn-clipboard:hover{color:#fff;background-color:#0d6efd}.bd-navbar{padding:.625rem 0;background-color:#7952b3}@media (max-width: 991.98px){.bd-navbar .navbar-nav-scroll{width:100%}.bd-navbar .navbar-nav-scroll .navbar-nav{margin:-.5rem 0;overflow-x:auto;white-space:nowrap;-webkit-overflow-scrolling:touch}}.bd-navbar .navbar-nav .nav-link{color:rgba(255,255,255,0.85)}.bd-navbar .navbar-nav .nav-link:hover,.bd-navbar .navbar-nav .nav-link:focus{color:#fff}.bd-navbar .navbar-nav .nav-link.active{font-weight:600;color:#fff}.bd-navbar .navbar-nav-svg{width:1rem;height:1rem;vertical-align:text-top}.skippy{display:block;padding:1em;color:#fff;text-align:center;background-color:#563d7c;outline:0}.skippy:hover{color:#fff}.skippy-text{padding:.5em;outline:1px dotted}.bd-footer{font-size:.875rem;color:#63707c}.bd-footer a{font-weight:600;color:#495057}.bd-footer a:hover,.bd-footer a:focus{color:#007bff}.bd-footer p{margin-bottom:0}.bd-footer-links{padding-left:0;margin-bottom:1rem}.bd-footer-links li{display:inline-block}.bd-footer-links li+li{margin-left:1rem}.chroma .dl{color:#4070a0}.chroma .c{color:#727272}.chroma .c1{color:#727272}.chroma .ch{font-style:italic;color:#60a0b0}.chroma .cm{color:#727272}.chroma .cp{color:#008085}.chroma .cpf{color:#007020}.chroma .cs{color:#727272}.chroma .gd{background-color:#fcc;border:1px solid #c00}.chroma .ge{font-style:italic}.chroma .gh{color:#030}.chroma .gi{background-color:#cfc;border:1px solid #0c0}.chroma .gl{text-decoration:underline}.chroma .go{color:#aaa}.chroma .gp{color:#009}.chroma .gr{color:#f00}.chroma .gs{font-weight:700}.chroma .gt{color:#9c6}.chroma .gu{color:#030}.chroma .il{color:#c24f19}.chroma .k{color:#069}.chroma .kc{color:#069}.chroma .kd{color:#069}.chroma .kn{color:#069}.chroma .kp{color:#069}.chroma .kr{color:#069}.chroma .kt{color:#078}.chroma .m{color:#c24f19}.chroma .mf{color:#c24f19}.chroma .mb{color:#40a070}.chroma .mh{color:#c24f19}.chroma .mi{color:#c24f19}.chroma .mo{color:#c24f19}.chroma .na{color:#006ee0}.chroma .nb{color:#366}.chroma .nc{color:#168174}.chroma .nd{color:#6b62de}.chroma .ne{color:#c00}.chroma .nf{color:#b715f4}.chroma .ni{color:#727272}.chroma .nl{color:#6b62de}.chroma .nn{color:#007ca5}.chroma .no{color:#360}.chroma .nt{color:#2f6f9f}.chroma .nv{color:#033}.chroma .o{color:#555}.chroma .ow{color:#000}.chroma .s{color:#d73038}.chroma .s1{color:#c30}.chroma .s2{color:#c30}.chroma .sa{color:#4070a0}.chroma .sb{color:#c30}.chroma .sc{color:#c30}.chroma .sd{font-style:italic;color:#c30}.chroma .se{color:#c30}.chroma .sh{color:#c30}.chroma .si{color:#a00}.chroma .sr{color:#337e7e}.chroma .ss{color:#fc3}.chroma .sx{color:#c30}.chroma .w{color:#bbb}#carbonads{padding:.75rem;overflow:auto;background-color:rgba(0,0,0,0.05);border-radius:.25rem}.carbon-img{float:left;margin-right:.75rem}@media (min-width: 768px){.carbon-img{margin-bottom:.5rem}}@media (min-width: 992px){.carbon-img{margin-bottom:0}}.carbon-text,.carbon-poweredby{display:block;color:#6c757d}.carbon-text:hover,.carbon-text:focus,.carbon-poweredby:hover,.carbon-poweredby:focus{color:#343a40;text-decoration:none}.carbon-text{margin-bottom:.5rem;text-decoration:none}@media (min-width: 768px){.carbon-text{font-size:.875rem}}.carbon-poweredby{margin-top:.75rem;font-size:.875rem}.highlight pre{padding:1.25rem;margin-bottom:1.5rem;background-color:rgba(0,0,0,0.025);border-radius:.25rem;scrollbar-width:none}.highlight pre::-webkit-scrollbar{display:none}.highlight pre code{word-wrap:normal}.bd-example{padding:1.25rem;border:1px solid rgba(0,0,0,0.1);border-top-left-radius:.25rem;border-top-right-radius:.25rem}.bd-example+.highlight pre{border-top-left-radius:0;border-top-right-radius:0}.f0{font-size:2rem}@media (min-width: 520px){.f0{font-size:3rem}}.f3{font-size:1.25rem}@media (min-width: 520px){.f3{font-size:1.5rem}}.f5{font-size:1rem}.hero{border-bottom:1px solid rgba(0,0,0,0.05)}.hero .f3{max-width:760px}.hero hr{max-width:100px}@media (min-width: 768px){.icon-search{width:35%}}.bi{display:inline-block;vertical-align:text-bottom}.list:empty::before{display:block;width:100%;padding:100px 2rem;margin-right:15px;margin-left:15px;color:#adb5bd;text-align:center;content:"Nothing found, try searching again.";background-color:#f8f9fa;border-radius:.5rem}.list{font-size:2rem}.list a:hover,.list a:hover .name,.list a:focus,.list a:focus .name{color:var(--bs-blue) !important}.btn-group>.btn{flex-shrink:0}.name{font-size:.8125rem}@media (min-width: 1200px){.row-cols-xl-8>*{flex:0 0 12.5%;max-width:12.5%}}

'
]

{ #category : #accessing }
SBSBootstrapIconsComponent >> tokenizeSelector: selector [
	| tokens |
	tokens := selector asCapitalizedPhrase asLowercase substrings.
	tokens at: 1 put: tokens first capitalized.
	^tokens
]
