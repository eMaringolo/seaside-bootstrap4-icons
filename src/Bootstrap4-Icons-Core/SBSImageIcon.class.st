Class {
	#name : #SBSImageIcon,
	#superclass : #Object,
	#instVars : [
		'imageTag'
	],
	#category : #'Bootstrap4-Icons-Core'
}

{ #category : #'instance creation' }
SBSImageIcon class >> on: aWAImageTag [

	^self new
		setImageTag: aWAImageTag;
		yourself
]

{ #category : #icons }
SBSImageIcon >> alarm [
	self setImageTagUrl:'alarm'.
]

{ #category : #icons }
SBSImageIcon >> alarmFill [
	self setImageTagUrl:'alarm-fill'.
]

{ #category : #icons }
SBSImageIcon >> alignBottom [
	self setImageTagUrl:'align-bottom'.
]

{ #category : #icons }
SBSImageIcon >> alignCenter [
	self setImageTagUrl:'align-center'.
]

{ #category : #icons }
SBSImageIcon >> alignEnd [
	self setImageTagUrl:'align-end'.
]

{ #category : #icons }
SBSImageIcon >> alignMiddle [
	self setImageTagUrl:'align-middle'.
]

{ #category : #icons }
SBSImageIcon >> alignStart [
	self setImageTagUrl:'align-start'.
]

{ #category : #icons }
SBSImageIcon >> alignTop [
	self setImageTagUrl:'align-top'.
]

{ #category : #icons }
SBSImageIcon >> alt [
	self setImageTagUrl:'alt'.
]

{ #category : #icons }
SBSImageIcon >> app [
	self setImageTagUrl:'app'.
]

{ #category : #icons }
SBSImageIcon >> appIndicator [
	self setImageTagUrl:'app-indicator'.
]

{ #category : #icons }
SBSImageIcon >> archive [
	self setImageTagUrl:'archive'.
]

{ #category : #icons }
SBSImageIcon >> archiveFill [
	self setImageTagUrl:'archive-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrow90degDown [
	self setImageTagUrl:'arrow-90deg-down'.
]

{ #category : #icons }
SBSImageIcon >> arrow90degLeft [
	self setImageTagUrl:'arrow-90deg-left'.
]

{ #category : #icons }
SBSImageIcon >> arrow90degRight [
	self setImageTagUrl:'arrow-90deg-right'.
]

{ #category : #icons }
SBSImageIcon >> arrow90degUp [
	self setImageTagUrl:'arrow-90deg-up'.
]

{ #category : #icons }
SBSImageIcon >> arrowBarDown [
	self setImageTagUrl:'arrow-bar-down'.
]

{ #category : #icons }
SBSImageIcon >> arrowBarLeft [
	self setImageTagUrl:'arrow-bar-left'.
]

{ #category : #icons }
SBSImageIcon >> arrowBarRight [
	self setImageTagUrl:'arrow-bar-right'.
]

{ #category : #icons }
SBSImageIcon >> arrowBarUp [
	self setImageTagUrl:'arrow-bar-up'.
]

{ #category : #icons }
SBSImageIcon >> arrowClockwise [
	self setImageTagUrl:'arrow-clockwise'.
]

{ #category : #icons }
SBSImageIcon >> arrowCounterclockwise [
	self setImageTagUrl:'arrow-counterclockwise'.
]

{ #category : #icons }
SBSImageIcon >> arrowDown [
	self setImageTagUrl:'arrow-down'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownCircle [
	self setImageTagUrl:'arrow-down-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownCircleFill [
	self setImageTagUrl:'arrow-down-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownLeft [
	self setImageTagUrl:'arrow-down-left'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownLeftCircle [
	self setImageTagUrl:'arrow-down-left-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownLeftCircleFill [
	self setImageTagUrl:'arrow-down-left-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownLeftSquare [
	self setImageTagUrl:'arrow-down-left-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownLeftSquareFill [
	self setImageTagUrl:'arrow-down-left-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownRight [
	self setImageTagUrl:'arrow-down-right'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownRightCircle [
	self setImageTagUrl:'arrow-down-right-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownRightCircleFill [
	self setImageTagUrl:'arrow-down-right-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownRightSquare [
	self setImageTagUrl:'arrow-down-right-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownRightSquareFill [
	self setImageTagUrl:'arrow-down-right-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownShort [
	self setImageTagUrl:'arrow-down-short'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownSquare [
	self setImageTagUrl:'arrow-down-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownSquareFill [
	self setImageTagUrl:'arrow-down-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowDownUp [
	self setImageTagUrl:'arrow-down-up'.
]

{ #category : #icons }
SBSImageIcon >> arrowLeft [
	self setImageTagUrl:'arrow-left'.
]

{ #category : #icons }
SBSImageIcon >> arrowLeftCircle [
	self setImageTagUrl:'arrow-left-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowLeftCircleFill [
	self setImageTagUrl:'arrow-left-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowLeftRight [
	self setImageTagUrl:'arrow-left-right'.
]

{ #category : #icons }
SBSImageIcon >> arrowLeftShort [
	self setImageTagUrl:'arrow-left-short'.
]

{ #category : #icons }
SBSImageIcon >> arrowLeftSquare [
	self setImageTagUrl:'arrow-left-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowLeftSquareFill [
	self setImageTagUrl:'arrow-left-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowRepeat [
	self setImageTagUrl:'arrow-repeat'.
]

{ #category : #icons }
SBSImageIcon >> arrowReturnLeft [
	self setImageTagUrl:'arrow-return-left'.
]

{ #category : #icons }
SBSImageIcon >> arrowReturnRight [
	self setImageTagUrl:'arrow-return-right'.
]

{ #category : #icons }
SBSImageIcon >> arrowRight [
	self setImageTagUrl:'arrow-right'.
]

{ #category : #icons }
SBSImageIcon >> arrowRightCircle [
	self setImageTagUrl:'arrow-right-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowRightCircleFill [
	self setImageTagUrl:'arrow-right-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowRightShort [
	self setImageTagUrl:'arrow-right-short'.
]

{ #category : #icons }
SBSImageIcon >> arrowRightSquare [
	self setImageTagUrl:'arrow-right-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowRightSquareFill [
	self setImageTagUrl:'arrow-right-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowUp [
	self setImageTagUrl:'arrow-up'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpCircle [
	self setImageTagUrl:'arrow-up-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpCircleFill [
	self setImageTagUrl:'arrow-up-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpLeft [
	self setImageTagUrl:'arrow-up-left'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpLeftCircle [
	self setImageTagUrl:'arrow-up-left-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpLeftCircleFill [
	self setImageTagUrl:'arrow-up-left-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpLeftSquare [
	self setImageTagUrl:'arrow-up-left-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpLeftSquareFill [
	self setImageTagUrl:'arrow-up-left-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpRight [
	self setImageTagUrl:'arrow-up-right'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpRightCircle [
	self setImageTagUrl:'arrow-up-right-circle'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpRightCircleFill [
	self setImageTagUrl:'arrow-up-right-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpRightSquare [
	self setImageTagUrl:'arrow-up-right-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpRightSquareFill [
	self setImageTagUrl:'arrow-up-right-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpShort [
	self setImageTagUrl:'arrow-up-short'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpSquare [
	self setImageTagUrl:'arrow-up-square'.
]

{ #category : #icons }
SBSImageIcon >> arrowUpSquareFill [
	self setImageTagUrl:'arrow-up-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> arrowsAngleContract [
	self setImageTagUrl:'arrows-angle-contract'.
]

{ #category : #icons }
SBSImageIcon >> arrowsAngleExpand [
	self setImageTagUrl:'arrows-angle-expand'.
]

{ #category : #icons }
SBSImageIcon >> arrowsCollapse [
	self setImageTagUrl:'arrows-collapse'.
]

{ #category : #icons }
SBSImageIcon >> arrowsExpand [
	self setImageTagUrl:'arrows-expand'.
]

{ #category : #icons }
SBSImageIcon >> arrowsFullscreen [
	self setImageTagUrl:'arrows-fullscreen'.
]

{ #category : #icons }
SBSImageIcon >> arrowsMove [
	self setImageTagUrl:'arrows-move'.
]

{ #category : #icons }
SBSImageIcon >> aspectRatio [
	self setImageTagUrl:'aspect-ratio'.
]

{ #category : #icons }
SBSImageIcon >> aspectRatioFill [
	self setImageTagUrl:'aspect-ratio-fill'.
]

{ #category : #icons }
SBSImageIcon >> asterisk [
	self setImageTagUrl:'asterisk'.
]

{ #category : #icons }
SBSImageIcon >> at [
	self setImageTagUrl:'at'.
]

{ #category : #icons }
SBSImageIcon >> award [
	self setImageTagUrl:'award'.
]

{ #category : #icons }
SBSImageIcon >> awardFill [
	self setImageTagUrl:'award-fill'.
]

{ #category : #icons }
SBSImageIcon >> back [
	self setImageTagUrl:'back'.
]

{ #category : #icons }
SBSImageIcon >> backspace [
	self setImageTagUrl:'backspace'.
]

{ #category : #icons }
SBSImageIcon >> backspaceFill [
	self setImageTagUrl:'backspace-fill'.
]

{ #category : #icons }
SBSImageIcon >> backspaceReverse [
	self setImageTagUrl:'backspace-reverse'.
]

{ #category : #icons }
SBSImageIcon >> backspaceReverseFill [
	self setImageTagUrl:'backspace-reverse-fill'.
]

{ #category : #icons }
SBSImageIcon >> badge4k [
	self setImageTagUrl:'badge-4k'.
]

{ #category : #icons }
SBSImageIcon >> badge4kFill [
	self setImageTagUrl:'badge-4k-fill'.
]

{ #category : #icons }
SBSImageIcon >> badge8k [
	self setImageTagUrl:'badge-8k'.
]

{ #category : #icons }
SBSImageIcon >> badge8kFill [
	self setImageTagUrl:'badge-8k-fill'.
]

{ #category : #icons }
SBSImageIcon >> badgeCc [
	self setImageTagUrl:'badge-cc'.
]

{ #category : #icons }
SBSImageIcon >> badgeCcFill [
	self setImageTagUrl:'badge-cc-fill'.
]

{ #category : #icons }
SBSImageIcon >> badgeHd [
	self setImageTagUrl:'badge-hd'.
]

{ #category : #icons }
SBSImageIcon >> badgeHdFill [
	self setImageTagUrl:'badge-hd-fill'.
]

{ #category : #icons }
SBSImageIcon >> badgeTm [
	self setImageTagUrl:'badge-tm'.
]

{ #category : #icons }
SBSImageIcon >> badgeTmFill [
	self setImageTagUrl:'badge-tm-fill'.
]

{ #category : #icons }
SBSImageIcon >> badgeVo [
	self setImageTagUrl:'badge-vo'.
]

{ #category : #icons }
SBSImageIcon >> badgeVoFill [
	self setImageTagUrl:'badge-vo-fill'.
]

{ #category : #icons }
SBSImageIcon >> bag [
	self setImageTagUrl:'bag'.
]

{ #category : #icons }
SBSImageIcon >> bagCheck [
	self setImageTagUrl:'bag-check'.
]

{ #category : #icons }
SBSImageIcon >> bagDash [
	self setImageTagUrl:'bag-dash'.
]

{ #category : #icons }
SBSImageIcon >> bagFill [
	self setImageTagUrl:'bag-fill'.
]

{ #category : #icons }
SBSImageIcon >> bagPlus [
	self setImageTagUrl:'bag-plus'.
]

{ #category : #icons }
SBSImageIcon >> barChart [
	self setImageTagUrl:'bar-chart'.
]

{ #category : #icons }
SBSImageIcon >> barChartFill [
	self setImageTagUrl:'bar-chart-fill'.
]

{ #category : #icons }
SBSImageIcon >> barChartLine [
	self setImageTagUrl:'bar-chart-line'.
]

{ #category : #icons }
SBSImageIcon >> barChartLineFill [
	self setImageTagUrl:'bar-chart-line-fill'.
]

{ #category : #icons }
SBSImageIcon >> barChartSteps [
	self setImageTagUrl:'bar-chart-steps'.
]

{ #category : #icons }
SBSImageIcon >> basket [
	self setImageTagUrl:'basket'.
]

{ #category : #icons }
SBSImageIcon >> basket2 [
	self setImageTagUrl:'basket2'.
]

{ #category : #icons }
SBSImageIcon >> basket2Fill [
	self setImageTagUrl:'basket2-fill'.
]

{ #category : #icons }
SBSImageIcon >> basket3 [
	self setImageTagUrl:'basket3'.
]

{ #category : #icons }
SBSImageIcon >> basket3Fill [
	self setImageTagUrl:'basket3-fill'.
]

{ #category : #icons }
SBSImageIcon >> basketFill [
	self setImageTagUrl:'basket-fill'.
]

{ #category : #icons }
SBSImageIcon >> battery [
	self setImageTagUrl:'battery'.
]

{ #category : #icons }
SBSImageIcon >> batteryCharging [
	self setImageTagUrl:'battery-charging'.
]

{ #category : #icons }
SBSImageIcon >> batteryFull [
	self setImageTagUrl:'battery-full'.
]

{ #category : #icons }
SBSImageIcon >> batteryHalf [
	self setImageTagUrl:'battery-half'.
]

{ #category : #icons }
SBSImageIcon >> bell [
	self setImageTagUrl:'bell'.
]

{ #category : #icons }
SBSImageIcon >> bellFill [
	self setImageTagUrl:'bell-fill'.
]

{ #category : #icons }
SBSImageIcon >> bezier [
	self setImageTagUrl:'bezier'.
]

{ #category : #icons }
SBSImageIcon >> bezier2 [
	self setImageTagUrl:'bezier2'.
]

{ #category : #icons }
SBSImageIcon >> bicycle [
	self setImageTagUrl:'bicycle'.
]

{ #category : #icons }
SBSImageIcon >> binoculars [
	self setImageTagUrl:'binoculars'.
]

{ #category : #icons }
SBSImageIcon >> binocularsFill [
	self setImageTagUrl:'binoculars-fill'.
]

{ #category : #icons }
SBSImageIcon >> blockquoteLeft [
	self setImageTagUrl:'blockquote-left'.
]

{ #category : #icons }
SBSImageIcon >> blockquoteRight [
	self setImageTagUrl:'blockquote-right'.
]

{ #category : #icons }
SBSImageIcon >> book [
	self setImageTagUrl:'book'.
]

{ #category : #icons }
SBSImageIcon >> bookFill [
	self setImageTagUrl:'book-fill'.
]

{ #category : #icons }
SBSImageIcon >> bookHalf [
	self setImageTagUrl:'book-half'.
]

{ #category : #icons }
SBSImageIcon >> bookmark [
	self setImageTagUrl:'bookmark'.
]

{ #category : #icons }
SBSImageIcon >> bookmarkCheck [
	self setImageTagUrl:'bookmark-check'.
]

{ #category : #icons }
SBSImageIcon >> bookmarkDash [
	self setImageTagUrl:'bookmark-dash'.
]

{ #category : #icons }
SBSImageIcon >> bookmarkFill [
	self setImageTagUrl:'bookmark-fill'.
]

{ #category : #icons }
SBSImageIcon >> bookmarkPlus [
	self setImageTagUrl:'bookmark-plus'.
]

{ #category : #icons }
SBSImageIcon >> bookmarks [
	self setImageTagUrl:'bookmarks'.
]

{ #category : #icons }
SBSImageIcon >> bookmarksFill [
	self setImageTagUrl:'bookmarks-fill'.
]

{ #category : #icons }
SBSImageIcon >> bookshelf [
	self setImageTagUrl:'bookshelf'.
]

{ #category : #icons }
SBSImageIcon >> bootstrap [
	self setImageTagUrl:'bootstrap'.
]

{ #category : #icons }
SBSImageIcon >> bootstrapFill [
	self setImageTagUrl:'bootstrap-fill'.
]

{ #category : #icons }
SBSImageIcon >> bootstrapReboot [
	self setImageTagUrl:'bootstrap-reboot'.
]

{ #category : #icons }
SBSImageIcon >> borderStyle [
	self setImageTagUrl:'border-style'.
]

{ #category : #icons }
SBSImageIcon >> borderWidth [
	self setImageTagUrl:'border-width'.
]

{ #category : #icons }
SBSImageIcon >> boundingBox [
	self setImageTagUrl:'bounding-box'.
]

{ #category : #icons }
SBSImageIcon >> boundingBoxCircles [
	self setImageTagUrl:'bounding-box-circles'.
]

{ #category : #icons }
SBSImageIcon >> box [
	self setImageTagUrl:'box'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowDown [
	self setImageTagUrl:'box-arrow-down'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowDownLeft [
	self setImageTagUrl:'box-arrow-down-left'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowDownRight [
	self setImageTagUrl:'box-arrow-down-right'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInDown [
	self setImageTagUrl:'box-arrow-in-down'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInDownLeft [
	self setImageTagUrl:'box-arrow-in-down-left'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInDownRight [
	self setImageTagUrl:'box-arrow-in-down-right'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInLeft [
	self setImageTagUrl:'box-arrow-in-left'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInRight [
	self setImageTagUrl:'box-arrow-in-right'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInUp [
	self setImageTagUrl:'box-arrow-in-up'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInUpLeft [
	self setImageTagUrl:'box-arrow-in-up-left'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowInUpRight [
	self setImageTagUrl:'box-arrow-in-up-right'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowLeft [
	self setImageTagUrl:'box-arrow-left'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowRight [
	self setImageTagUrl:'box-arrow-right'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowUp [
	self setImageTagUrl:'box-arrow-up'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowUpLeft [
	self setImageTagUrl:'box-arrow-up-left'.
]

{ #category : #icons }
SBSImageIcon >> boxArrowUpRight [
	self setImageTagUrl:'box-arrow-up-right'.
]

{ #category : #icons }
SBSImageIcon >> boxSeam [
	self setImageTagUrl:'box-seam'.
]

{ #category : #icons }
SBSImageIcon >> braces [
	self setImageTagUrl:'braces'.
]

{ #category : #icons }
SBSImageIcon >> bricks [
	self setImageTagUrl:'bricks'.
]

{ #category : #icons }
SBSImageIcon >> briefcase [
	self setImageTagUrl:'briefcase'.
]

{ #category : #icons }
SBSImageIcon >> briefcaseFill [
	self setImageTagUrl:'briefcase-fill'.
]

{ #category : #icons }
SBSImageIcon >> brightnessAltHigh [
	self setImageTagUrl:'brightness-alt-high'.
]

{ #category : #icons }
SBSImageIcon >> brightnessAltHighFill [
	self setImageTagUrl:'brightness-alt-high-fill'.
]

{ #category : #icons }
SBSImageIcon >> brightnessAltLow [
	self setImageTagUrl:'brightness-alt-low'.
]

{ #category : #icons }
SBSImageIcon >> brightnessAltLowFill [
	self setImageTagUrl:'brightness-alt-low-fill'.
]

{ #category : #icons }
SBSImageIcon >> brightnessHigh [
	self setImageTagUrl:'brightness-high'.
]

{ #category : #icons }
SBSImageIcon >> brightnessHighFill [
	self setImageTagUrl:'brightness-high-fill'.
]

{ #category : #icons }
SBSImageIcon >> brightnessLow [
	self setImageTagUrl:'brightness-low'.
]

{ #category : #icons }
SBSImageIcon >> brightnessLowFill [
	self setImageTagUrl:'brightness-low-fill'.
]

{ #category : #icons }
SBSImageIcon >> broadcast [
	self setImageTagUrl:'broadcast'.
]

{ #category : #icons }
SBSImageIcon >> broadcastPin [
	self setImageTagUrl:'broadcast-pin'.
]

{ #category : #icons }
SBSImageIcon >> brush [
	self setImageTagUrl:'brush'.
]

{ #category : #icons }
SBSImageIcon >> bucket [
	self setImageTagUrl:'bucket'.
]

{ #category : #icons }
SBSImageIcon >> bucketFill [
	self setImageTagUrl:'bucket-fill'.
]

{ #category : #icons }
SBSImageIcon >> bug [
	self setImageTagUrl:'bug'.
]

{ #category : #icons }
SBSImageIcon >> bugFill [
	self setImageTagUrl:'bug-fill'.
]

{ #category : #icons }
SBSImageIcon >> building [
	self setImageTagUrl:'building'.
]

{ #category : #icons }
SBSImageIcon >> bullseye [
	self setImageTagUrl:'bullseye'.
]

{ #category : #icons }
SBSImageIcon >> calculator [
	self setImageTagUrl:'calculator'.
]

{ #category : #icons }
SBSImageIcon >> calculatorFill [
	self setImageTagUrl:'calculator-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar [
	self setImageTagUrl:'calendar'.
]

{ #category : #icons }
SBSImageIcon >> calendar2 [
	self setImageTagUrl:'calendar2'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Check [
	self setImageTagUrl:'calendar2-check'.
]

{ #category : #icons }
SBSImageIcon >> calendar2CheckFill [
	self setImageTagUrl:'calendar2-check-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Date [
	self setImageTagUrl:'calendar2-date'.
]

{ #category : #icons }
SBSImageIcon >> calendar2DateFill [
	self setImageTagUrl:'calendar2-date-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Day [
	self setImageTagUrl:'calendar2-day'.
]

{ #category : #icons }
SBSImageIcon >> calendar2DayFill [
	self setImageTagUrl:'calendar2-day-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Event [
	self setImageTagUrl:'calendar2-event'.
]

{ #category : #icons }
SBSImageIcon >> calendar2EventFill [
	self setImageTagUrl:'calendar2-event-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Fill [
	self setImageTagUrl:'calendar2-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Minus [
	self setImageTagUrl:'calendar2-minus'.
]

{ #category : #icons }
SBSImageIcon >> calendar2MinusFill [
	self setImageTagUrl:'calendar2-minus-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Month [
	self setImageTagUrl:'calendar2-month'.
]

{ #category : #icons }
SBSImageIcon >> calendar2MonthFill [
	self setImageTagUrl:'calendar2-month-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Plus [
	self setImageTagUrl:'calendar2-plus'.
]

{ #category : #icons }
SBSImageIcon >> calendar2PlusFill [
	self setImageTagUrl:'calendar2-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Range [
	self setImageTagUrl:'calendar2-range'.
]

{ #category : #icons }
SBSImageIcon >> calendar2RangeFill [
	self setImageTagUrl:'calendar2-range-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar2Week [
	self setImageTagUrl:'calendar2-week'.
]

{ #category : #icons }
SBSImageIcon >> calendar2WeekFill [
	self setImageTagUrl:'calendar2-week-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar3 [
	self setImageTagUrl:'calendar3'.
]

{ #category : #icons }
SBSImageIcon >> calendar3Event [
	self setImageTagUrl:'calendar3-event'.
]

{ #category : #icons }
SBSImageIcon >> calendar3EventFill [
	self setImageTagUrl:'calendar3-event-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar3Fill [
	self setImageTagUrl:'calendar3-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar3Range [
	self setImageTagUrl:'calendar3-range'.
]

{ #category : #icons }
SBSImageIcon >> calendar3RangeFill [
	self setImageTagUrl:'calendar3-range-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar3Week [
	self setImageTagUrl:'calendar3-week'.
]

{ #category : #icons }
SBSImageIcon >> calendar3WeekFill [
	self setImageTagUrl:'calendar3-week-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendar4 [
	self setImageTagUrl:'calendar4'.
]

{ #category : #icons }
SBSImageIcon >> calendar4Event [
	self setImageTagUrl:'calendar4-event'.
]

{ #category : #icons }
SBSImageIcon >> calendar4Range [
	self setImageTagUrl:'calendar4-range'.
]

{ #category : #icons }
SBSImageIcon >> calendar4Week [
	self setImageTagUrl:'calendar4-week'.
]

{ #category : #icons }
SBSImageIcon >> calendarCheck [
	self setImageTagUrl:'calendar-check'.
]

{ #category : #icons }
SBSImageIcon >> calendarCheckFill [
	self setImageTagUrl:'calendar-check-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarDate [
	self setImageTagUrl:'calendar-date'.
]

{ #category : #icons }
SBSImageIcon >> calendarDateFill [
	self setImageTagUrl:'calendar-date-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarDay [
	self setImageTagUrl:'calendar-day'.
]

{ #category : #icons }
SBSImageIcon >> calendarDayFill [
	self setImageTagUrl:'calendar-day-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarEvent [
	self setImageTagUrl:'calendar-event'.
]

{ #category : #icons }
SBSImageIcon >> calendarEventFill [
	self setImageTagUrl:'calendar-event-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarFill [
	self setImageTagUrl:'calendar-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarMinus [
	self setImageTagUrl:'calendar-minus'.
]

{ #category : #icons }
SBSImageIcon >> calendarMinusFill [
	self setImageTagUrl:'calendar-minus-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarMonth [
	self setImageTagUrl:'calendar-month'.
]

{ #category : #icons }
SBSImageIcon >> calendarMonthFill [
	self setImageTagUrl:'calendar-month-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarPlus [
	self setImageTagUrl:'calendar-plus'.
]

{ #category : #icons }
SBSImageIcon >> calendarPlusFill [
	self setImageTagUrl:'calendar-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarRange [
	self setImageTagUrl:'calendar-range'.
]

{ #category : #icons }
SBSImageIcon >> calendarRangeFill [
	self setImageTagUrl:'calendar-range-fill'.
]

{ #category : #icons }
SBSImageIcon >> calendarWeek [
	self setImageTagUrl:'calendar-week'.
]

{ #category : #icons }
SBSImageIcon >> calendarWeekFill [
	self setImageTagUrl:'calendar-week-fill'.
]

{ #category : #icons }
SBSImageIcon >> camera [
	self setImageTagUrl:'camera'.
]

{ #category : #icons }
SBSImageIcon >> camera2 [
	self setImageTagUrl:'camera2'.
]

{ #category : #icons }
SBSImageIcon >> cameraFill [
	self setImageTagUrl:'camera-fill'.
]

{ #category : #icons }
SBSImageIcon >> cameraReels [
	self setImageTagUrl:'camera-reels'.
]

{ #category : #icons }
SBSImageIcon >> cameraReelsFill [
	self setImageTagUrl:'camera-reels-fill'.
]

{ #category : #icons }
SBSImageIcon >> cameraVideo [
	self setImageTagUrl:'camera-video'.
]

{ #category : #icons }
SBSImageIcon >> cameraVideoFill [
	self setImageTagUrl:'camera-video-fill'.
]

{ #category : #icons }
SBSImageIcon >> cameraVideoOff [
	self setImageTagUrl:'camera-video-off'.
]

{ #category : #icons }
SBSImageIcon >> cameraVideoOffFill [
	self setImageTagUrl:'camera-video-off-fill'.
]

{ #category : #icons }
SBSImageIcon >> capslock [
	self setImageTagUrl:'capslock'.
]

{ #category : #icons }
SBSImageIcon >> capslockFill [
	self setImageTagUrl:'capslock-fill'.
]

{ #category : #icons }
SBSImageIcon >> cardChecklist [
	self setImageTagUrl:'card-checklist'.
]

{ #category : #icons }
SBSImageIcon >> cardHeading [
	self setImageTagUrl:'card-heading'.
]

{ #category : #icons }
SBSImageIcon >> cardImage [
	self setImageTagUrl:'card-image'.
]

{ #category : #icons }
SBSImageIcon >> cardList [
	self setImageTagUrl:'card-list'.
]

{ #category : #icons }
SBSImageIcon >> cardText [
	self setImageTagUrl:'card-text'.
]

{ #category : #icons }
SBSImageIcon >> caretDown [
	self setImageTagUrl:'caret-down'.
]

{ #category : #icons }
SBSImageIcon >> caretDownFill [
	self setImageTagUrl:'caret-down-fill'.
]

{ #category : #icons }
SBSImageIcon >> caretDownSquare [
	self setImageTagUrl:'caret-down-square'.
]

{ #category : #icons }
SBSImageIcon >> caretDownSquareFill [
	self setImageTagUrl:'caret-down-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> caretLeft [
	self setImageTagUrl:'caret-left'.
]

{ #category : #icons }
SBSImageIcon >> caretLeftFill [
	self setImageTagUrl:'caret-left-fill'.
]

{ #category : #icons }
SBSImageIcon >> caretLeftSquare [
	self setImageTagUrl:'caret-left-square'.
]

{ #category : #icons }
SBSImageIcon >> caretLeftSquareFill [
	self setImageTagUrl:'caret-left-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> caretRight [
	self setImageTagUrl:'caret-right'.
]

{ #category : #icons }
SBSImageIcon >> caretRightFill [
	self setImageTagUrl:'caret-right-fill'.
]

{ #category : #icons }
SBSImageIcon >> caretRightSquare [
	self setImageTagUrl:'caret-right-square'.
]

{ #category : #icons }
SBSImageIcon >> caretRightSquareFill [
	self setImageTagUrl:'caret-right-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> caretUp [
	self setImageTagUrl:'caret-up'.
]

{ #category : #icons }
SBSImageIcon >> caretUpFill [
	self setImageTagUrl:'caret-up-fill'.
]

{ #category : #icons }
SBSImageIcon >> caretUpSquare [
	self setImageTagUrl:'caret-up-square'.
]

{ #category : #icons }
SBSImageIcon >> caretUpSquareFill [
	self setImageTagUrl:'caret-up-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> cart [
	self setImageTagUrl:'cart'.
]

{ #category : #icons }
SBSImageIcon >> cart2 [
	self setImageTagUrl:'cart2'.
]

{ #category : #icons }
SBSImageIcon >> cart3 [
	self setImageTagUrl:'cart3'.
]

{ #category : #icons }
SBSImageIcon >> cart4 [
	self setImageTagUrl:'cart4'.
]

{ #category : #icons }
SBSImageIcon >> cartCheck [
	self setImageTagUrl:'cart-check'.
]

{ #category : #icons }
SBSImageIcon >> cartDash [
	self setImageTagUrl:'cart-dash'.
]

{ #category : #icons }
SBSImageIcon >> cartFill [
	self setImageTagUrl:'cart-fill'.
]

{ #category : #icons }
SBSImageIcon >> cartPlus [
	self setImageTagUrl:'cart-plus'.
]

{ #category : #icons }
SBSImageIcon >> cash [
	self setImageTagUrl:'cash'.
]

{ #category : #icons }
SBSImageIcon >> cashStack [
	self setImageTagUrl:'cash-stack'.
]

{ #category : #icons }
SBSImageIcon >> cast [
	self setImageTagUrl:'cast'.
]

{ #category : #icons }
SBSImageIcon >> chat [
	self setImageTagUrl:'chat'.
]

{ #category : #icons }
SBSImageIcon >> chatDots [
	self setImageTagUrl:'chat-dots'.
]

{ #category : #icons }
SBSImageIcon >> chatDotsFill [
	self setImageTagUrl:'chat-dots-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatFill [
	self setImageTagUrl:'chat-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatLeft [
	self setImageTagUrl:'chat-left'.
]

{ #category : #icons }
SBSImageIcon >> chatLeftDots [
	self setImageTagUrl:'chat-left-dots'.
]

{ #category : #icons }
SBSImageIcon >> chatLeftDotsFill [
	self setImageTagUrl:'chat-left-dots-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatLeftFill [
	self setImageTagUrl:'chat-left-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatLeftQuote [
	self setImageTagUrl:'chat-left-quote'.
]

{ #category : #icons }
SBSImageIcon >> chatLeftQuoteFill [
	self setImageTagUrl:'chat-left-quote-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatLeftText [
	self setImageTagUrl:'chat-left-text'.
]

{ #category : #icons }
SBSImageIcon >> chatLeftTextFill [
	self setImageTagUrl:'chat-left-text-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatQuote [
	self setImageTagUrl:'chat-quote'.
]

{ #category : #icons }
SBSImageIcon >> chatQuoteFill [
	self setImageTagUrl:'chat-quote-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatRight [
	self setImageTagUrl:'chat-right'.
]

{ #category : #icons }
SBSImageIcon >> chatRightDots [
	self setImageTagUrl:'chat-right-dots'.
]

{ #category : #icons }
SBSImageIcon >> chatRightDotsFill [
	self setImageTagUrl:'chat-right-dots-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatRightFill [
	self setImageTagUrl:'chat-right-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatRightQuote [
	self setImageTagUrl:'chat-right-quote'.
]

{ #category : #icons }
SBSImageIcon >> chatRightQuoteFill [
	self setImageTagUrl:'chat-right-quote-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatRightText [
	self setImageTagUrl:'chat-right-text'.
]

{ #category : #icons }
SBSImageIcon >> chatRightTextFill [
	self setImageTagUrl:'chat-right-text-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatSquare [
	self setImageTagUrl:'chat-square'.
]

{ #category : #icons }
SBSImageIcon >> chatSquareDots [
	self setImageTagUrl:'chat-square-dots'.
]

{ #category : #icons }
SBSImageIcon >> chatSquareDotsFill [
	self setImageTagUrl:'chat-square-dots-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatSquareFill [
	self setImageTagUrl:'chat-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatSquareQuote [
	self setImageTagUrl:'chat-square-quote'.
]

{ #category : #icons }
SBSImageIcon >> chatSquareQuoteFill [
	self setImageTagUrl:'chat-square-quote-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatSquareText [
	self setImageTagUrl:'chat-square-text'.
]

{ #category : #icons }
SBSImageIcon >> chatSquareTextFill [
	self setImageTagUrl:'chat-square-text-fill'.
]

{ #category : #icons }
SBSImageIcon >> chatText [
	self setImageTagUrl:'chat-text'.
]

{ #category : #icons }
SBSImageIcon >> chatTextFill [
	self setImageTagUrl:'chat-text-fill'.
]

{ #category : #icons }
SBSImageIcon >> check [
	self setImageTagUrl:'check'.
]

{ #category : #icons }
SBSImageIcon >> check2 [
	self setImageTagUrl:'check2'.
]

{ #category : #icons }
SBSImageIcon >> check2All [
	self setImageTagUrl:'check2-all'.
]

{ #category : #icons }
SBSImageIcon >> check2Circle [
	self setImageTagUrl:'check2-circle'.
]

{ #category : #icons }
SBSImageIcon >> check2Square [
	self setImageTagUrl:'check2-square'.
]

{ #category : #icons }
SBSImageIcon >> checkAll [
	self setImageTagUrl:'check-all'.
]

{ #category : #icons }
SBSImageIcon >> checkCircle [
	self setImageTagUrl:'check-circle'.
]

{ #category : #icons }
SBSImageIcon >> checkCircleFill [
	self setImageTagUrl:'check-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> checkSquare [
	self setImageTagUrl:'check-square'.
]

{ #category : #icons }
SBSImageIcon >> checkSquareFill [
	self setImageTagUrl:'check-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> chevronBarContract [
	self setImageTagUrl:'chevron-bar-contract'.
]

{ #category : #icons }
SBSImageIcon >> chevronBarDown [
	self setImageTagUrl:'chevron-bar-down'.
]

{ #category : #icons }
SBSImageIcon >> chevronBarExpand [
	self setImageTagUrl:'chevron-bar-expand'.
]

{ #category : #icons }
SBSImageIcon >> chevronBarLeft [
	self setImageTagUrl:'chevron-bar-left'.
]

{ #category : #icons }
SBSImageIcon >> chevronBarRight [
	self setImageTagUrl:'chevron-bar-right'.
]

{ #category : #icons }
SBSImageIcon >> chevronBarUp [
	self setImageTagUrl:'chevron-bar-up'.
]

{ #category : #icons }
SBSImageIcon >> chevronCompactDown [
	self setImageTagUrl:'chevron-compact-down'.
]

{ #category : #icons }
SBSImageIcon >> chevronCompactLeft [
	self setImageTagUrl:'chevron-compact-left'.
]

{ #category : #icons }
SBSImageIcon >> chevronCompactRight [
	self setImageTagUrl:'chevron-compact-right'.
]

{ #category : #icons }
SBSImageIcon >> chevronCompactUp [
	self setImageTagUrl:'chevron-compact-up'.
]

{ #category : #icons }
SBSImageIcon >> chevronContract [
	self setImageTagUrl:'chevron-contract'.
]

{ #category : #icons }
SBSImageIcon >> chevronDoubleDown [
	self setImageTagUrl:'chevron-double-down'.
]

{ #category : #icons }
SBSImageIcon >> chevronDoubleLeft [
	self setImageTagUrl:'chevron-double-left'.
]

{ #category : #icons }
SBSImageIcon >> chevronDoubleRight [
	self setImageTagUrl:'chevron-double-right'.
]

{ #category : #icons }
SBSImageIcon >> chevronDoubleUp [
	self setImageTagUrl:'chevron-double-up'.
]

{ #category : #icons }
SBSImageIcon >> chevronDown [
	self setImageTagUrl:'chevron-down'.
]

{ #category : #icons }
SBSImageIcon >> chevronExpand [
	self setImageTagUrl:'chevron-expand'.
]

{ #category : #icons }
SBSImageIcon >> chevronLeft [
	self setImageTagUrl:'chevron-left'.
]

{ #category : #icons }
SBSImageIcon >> chevronRight [
	self setImageTagUrl:'chevron-right'.
]

{ #category : #icons }
SBSImageIcon >> chevronUp [
	self setImageTagUrl:'chevron-up'.
]

{ #category : #icons }
SBSImageIcon >> circle [
	self setImageTagUrl:'circle'.
]

{ #category : #icons }
SBSImageIcon >> circleFill [
	self setImageTagUrl:'circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> circleHalf [
	self setImageTagUrl:'circle-half'.
]

{ #category : #icons }
SBSImageIcon >> circleSquare [
	self setImageTagUrl:'circle-square'.
]

{ #category : #icons }
SBSImageIcon >> clipboard [
	self setImageTagUrl:'clipboard'.
]

{ #category : #icons }
SBSImageIcon >> clipboardCheck [
	self setImageTagUrl:'clipboard-check'.
]

{ #category : #icons }
SBSImageIcon >> clipboardData [
	self setImageTagUrl:'clipboard-data'.
]

{ #category : #icons }
SBSImageIcon >> clipboardMinus [
	self setImageTagUrl:'clipboard-minus'.
]

{ #category : #icons }
SBSImageIcon >> clipboardPlus [
	self setImageTagUrl:'clipboard-plus'.
]

{ #category : #icons }
SBSImageIcon >> clock [
	self setImageTagUrl:'clock'.
]

{ #category : #icons }
SBSImageIcon >> clockFill [
	self setImageTagUrl:'clock-fill'.
]

{ #category : #icons }
SBSImageIcon >> clockHistory [
	self setImageTagUrl:'clock-history'.
]

{ #category : #icons }
SBSImageIcon >> cloud [
	self setImageTagUrl:'cloud'.
]

{ #category : #icons }
SBSImageIcon >> cloudArrowDown [
	self setImageTagUrl:'cloud-arrow-down'.
]

{ #category : #icons }
SBSImageIcon >> cloudArrowDownFill [
	self setImageTagUrl:'cloud-arrow-down-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudArrowUp [
	self setImageTagUrl:'cloud-arrow-up'.
]

{ #category : #icons }
SBSImageIcon >> cloudArrowUpFill [
	self setImageTagUrl:'cloud-arrow-up-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudCheck [
	self setImageTagUrl:'cloud-check'.
]

{ #category : #icons }
SBSImageIcon >> cloudCheckFill [
	self setImageTagUrl:'cloud-check-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudDownload [
	self setImageTagUrl:'cloud-download'.
]

{ #category : #icons }
SBSImageIcon >> cloudDownloadFill [
	self setImageTagUrl:'cloud-download-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudFill [
	self setImageTagUrl:'cloud-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudMinus [
	self setImageTagUrl:'cloud-minus'.
]

{ #category : #icons }
SBSImageIcon >> cloudMinusFill [
	self setImageTagUrl:'cloud-minus-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudPlus [
	self setImageTagUrl:'cloud-plus'.
]

{ #category : #icons }
SBSImageIcon >> cloudPlusFill [
	self setImageTagUrl:'cloud-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudSlash [
	self setImageTagUrl:'cloud-slash'.
]

{ #category : #icons }
SBSImageIcon >> cloudSlashFill [
	self setImageTagUrl:'cloud-slash-fill'.
]

{ #category : #icons }
SBSImageIcon >> cloudUpload [
	self setImageTagUrl:'cloud-upload'.
]

{ #category : #icons }
SBSImageIcon >> cloudUploadFill [
	self setImageTagUrl:'cloud-upload-fill'.
]

{ #category : #icons }
SBSImageIcon >> code [
	self setImageTagUrl:'code'.
]

{ #category : #icons }
SBSImageIcon >> codeSlash [
	self setImageTagUrl:'code-slash'.
]

{ #category : #icons }
SBSImageIcon >> codeSquare [
	self setImageTagUrl:'code-square'.
]

{ #category : #icons }
SBSImageIcon >> collection [
	self setImageTagUrl:'collection'.
]

{ #category : #icons }
SBSImageIcon >> collectionFill [
	self setImageTagUrl:'collection-fill'.
]

{ #category : #icons }
SBSImageIcon >> collectionPlay [
	self setImageTagUrl:'collection-play'.
]

{ #category : #icons }
SBSImageIcon >> collectionPlayFill [
	self setImageTagUrl:'collection-play-fill'.
]

{ #category : #icons }
SBSImageIcon >> columns [
	self setImageTagUrl:'columns'.
]

{ #category : #icons }
SBSImageIcon >> columnsGap [
	self setImageTagUrl:'columns-gap'.
]

{ #category : #icons }
SBSImageIcon >> command [
	self setImageTagUrl:'command'.
]

{ #category : #icons }
SBSImageIcon >> compass [
	self setImageTagUrl:'compass'.
]

{ #category : #icons }
SBSImageIcon >> cone [
	self setImageTagUrl:'cone'.
]

{ #category : #icons }
SBSImageIcon >> coneStriped [
	self setImageTagUrl:'cone-striped'.
]

{ #category : #icons }
SBSImageIcon >> controller [
	self setImageTagUrl:'controller'.
]

{ #category : #icons }
SBSImageIcon >> cpu [
	self setImageTagUrl:'cpu'.
]

{ #category : #icons }
SBSImageIcon >> cpuFill [
	self setImageTagUrl:'cpu-fill'.
]

{ #category : #icons }
SBSImageIcon >> creditCard [
	self setImageTagUrl:'credit-card'.
]

{ #category : #icons }
SBSImageIcon >> creditCard2Back [
	self setImageTagUrl:'credit-card-2-back'.
]

{ #category : #icons }
SBSImageIcon >> creditCard2BackFill [
	self setImageTagUrl:'credit-card-2-back-fill'.
]

{ #category : #icons }
SBSImageIcon >> creditCard2Front [
	self setImageTagUrl:'credit-card-2-front'.
]

{ #category : #icons }
SBSImageIcon >> creditCard2FrontFill [
	self setImageTagUrl:'credit-card-2-front-fill'.
]

{ #category : #icons }
SBSImageIcon >> creditCardFill [
	self setImageTagUrl:'credit-card-fill'.
]

{ #category : #icons }
SBSImageIcon >> crop [
	self setImageTagUrl:'crop'.
]

{ #category : #icons }
SBSImageIcon >> cup [
	self setImageTagUrl:'cup'.
]

{ #category : #icons }
SBSImageIcon >> cupStraw [
	self setImageTagUrl:'cup-straw'.
]

{ #category : #icons }
SBSImageIcon >> cursor [
	self setImageTagUrl:'cursor'.
]

{ #category : #icons }
SBSImageIcon >> cursorFill [
	self setImageTagUrl:'cursor-fill'.
]

{ #category : #icons }
SBSImageIcon >> cursorText [
	self setImageTagUrl:'cursor-text'.
]

{ #category : #icons }
SBSImageIcon >> dash [
	self setImageTagUrl:'dash'.
]

{ #category : #icons }
SBSImageIcon >> dashCircle [
	self setImageTagUrl:'dash-circle'.
]

{ #category : #icons }
SBSImageIcon >> dashCircleFill [
	self setImageTagUrl:'dash-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> dashSquare [
	self setImageTagUrl:'dash-square'.
]

{ #category : #icons }
SBSImageIcon >> dashSquareFill [
	self setImageTagUrl:'dash-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> diagram2 [
	self setImageTagUrl:'diagram-2'.
]

{ #category : #icons }
SBSImageIcon >> diagram2Fill [
	self setImageTagUrl:'diagram-2-fill'.
]

{ #category : #icons }
SBSImageIcon >> diagram3 [
	self setImageTagUrl:'diagram-3'.
]

{ #category : #icons }
SBSImageIcon >> diagram3Fill [
	self setImageTagUrl:'diagram-3-fill'.
]

{ #category : #icons }
SBSImageIcon >> diamond [
	self setImageTagUrl:'diamond'.
]

{ #category : #icons }
SBSImageIcon >> diamondFill [
	self setImageTagUrl:'diamond-fill'.
]

{ #category : #icons }
SBSImageIcon >> diamondHalf [
	self setImageTagUrl:'diamond-half'.
]

{ #category : #icons }
SBSImageIcon >> dice1 [
	self setImageTagUrl:'dice-1'.
]

{ #category : #icons }
SBSImageIcon >> dice1Fill [
	self setImageTagUrl:'dice-1-fill'.
]

{ #category : #icons }
SBSImageIcon >> dice2 [
	self setImageTagUrl:'dice-2'.
]

{ #category : #icons }
SBSImageIcon >> dice2Fill [
	self setImageTagUrl:'dice-2-fill'.
]

{ #category : #icons }
SBSImageIcon >> dice3 [
	self setImageTagUrl:'dice-3'.
]

{ #category : #icons }
SBSImageIcon >> dice3Fill [
	self setImageTagUrl:'dice-3-fill'.
]

{ #category : #icons }
SBSImageIcon >> dice4 [
	self setImageTagUrl:'dice-4'.
]

{ #category : #icons }
SBSImageIcon >> dice4Fill [
	self setImageTagUrl:'dice-4-fill'.
]

{ #category : #icons }
SBSImageIcon >> dice5 [
	self setImageTagUrl:'dice-5'.
]

{ #category : #icons }
SBSImageIcon >> dice5Fill [
	self setImageTagUrl:'dice-5-fill'.
]

{ #category : #icons }
SBSImageIcon >> dice6 [
	self setImageTagUrl:'dice-6'.
]

{ #category : #icons }
SBSImageIcon >> dice6Fill [
	self setImageTagUrl:'dice-6-fill'.
]

{ #category : #icons }
SBSImageIcon >> display [
	self setImageTagUrl:'display'.
]

{ #category : #icons }
SBSImageIcon >> displayFill [
	self setImageTagUrl:'display-fill'.
]

{ #category : #icons }
SBSImageIcon >> distributeHorizontal [
	self setImageTagUrl:'distribute-horizontal'.
]

{ #category : #icons }
SBSImageIcon >> distributeVertical [
	self setImageTagUrl:'distribute-vertical'.
]

{ #category : #initialization }
SBSImageIcon >> doesNotUnderstand: aMessage [

	aMessage sendTo: imageTag
]

{ #category : #icons }
SBSImageIcon >> doorClosed [
	self setImageTagUrl:'door-closed'.
]

{ #category : #icons }
SBSImageIcon >> doorClosedFill [
	self setImageTagUrl:'door-closed-fill'.
]

{ #category : #icons }
SBSImageIcon >> doorOpen [
	self setImageTagUrl:'door-open'.
]

{ #category : #icons }
SBSImageIcon >> doorOpenFill [
	self setImageTagUrl:'door-open-fill'.
]

{ #category : #icons }
SBSImageIcon >> dot [
	self setImageTagUrl:'dot'.
]

{ #category : #icons }
SBSImageIcon >> download [
	self setImageTagUrl:'download'.
]

{ #category : #icons }
SBSImageIcon >> droplet [
	self setImageTagUrl:'droplet'.
]

{ #category : #icons }
SBSImageIcon >> dropletFill [
	self setImageTagUrl:'droplet-fill'.
]

{ #category : #icons }
SBSImageIcon >> dropletHalf [
	self setImageTagUrl:'droplet-half'.
]

{ #category : #icons }
SBSImageIcon >> earbuds [
	self setImageTagUrl:'earbuds'.
]

{ #category : #icons }
SBSImageIcon >> easel [
	self setImageTagUrl:'easel'.
]

{ #category : #icons }
SBSImageIcon >> easelFill [
	self setImageTagUrl:'easel-fill'.
]

{ #category : #icons }
SBSImageIcon >> egg [
	self setImageTagUrl:'egg'.
]

{ #category : #icons }
SBSImageIcon >> eggFill [
	self setImageTagUrl:'egg-fill'.
]

{ #category : #icons }
SBSImageIcon >> eggFried [
	self setImageTagUrl:'egg-fried'.
]

{ #category : #icons }
SBSImageIcon >> eject [
	self setImageTagUrl:'eject'.
]

{ #category : #icons }
SBSImageIcon >> ejectFill [
	self setImageTagUrl:'eject-fill'.
]

{ #category : #icons }
SBSImageIcon >> emojiAngry [
	self setImageTagUrl:'emoji-angry'.
]

{ #category : #icons }
SBSImageIcon >> emojiDizzy [
	self setImageTagUrl:'emoji-dizzy'.
]

{ #category : #icons }
SBSImageIcon >> emojiExpressionless [
	self setImageTagUrl:'emoji-expressionless'.
]

{ #category : #icons }
SBSImageIcon >> emojiFrown [
	self setImageTagUrl:'emoji-frown'.
]

{ #category : #icons }
SBSImageIcon >> emojiLaughing [
	self setImageTagUrl:'emoji-laughing'.
]

{ #category : #icons }
SBSImageIcon >> emojiNeutral [
	self setImageTagUrl:'emoji-neutral'.
]

{ #category : #icons }
SBSImageIcon >> emojiSmile [
	self setImageTagUrl:'emoji-smile'.
]

{ #category : #icons }
SBSImageIcon >> emojiSmileUpsideDown [
	self setImageTagUrl:'emoji-smile-upside-down'.
]

{ #category : #icons }
SBSImageIcon >> emojiSunglasses [
	self setImageTagUrl:'emoji-sunglasses'.
]

{ #category : #icons }
SBSImageIcon >> envelope [
	self setImageTagUrl:'envelope'.
]

{ #category : #icons }
SBSImageIcon >> envelopeFill [
	self setImageTagUrl:'envelope-fill'.
]

{ #category : #icons }
SBSImageIcon >> envelopeOpen [
	self setImageTagUrl:'envelope-open'.
]

{ #category : #icons }
SBSImageIcon >> envelopeOpenFill [
	self setImageTagUrl:'envelope-open-fill'.
]

{ #category : #icons }
SBSImageIcon >> exclamation [
	self setImageTagUrl:'exclamation'.
]

{ #category : #icons }
SBSImageIcon >> exclamationCircle [
	self setImageTagUrl:'exclamation-circle'.
]

{ #category : #icons }
SBSImageIcon >> exclamationCircleFill [
	self setImageTagUrl:'exclamation-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> exclamationDiamond [
	self setImageTagUrl:'exclamation-diamond'.
]

{ #category : #icons }
SBSImageIcon >> exclamationDiamondFill [
	self setImageTagUrl:'exclamation-diamond-fill'.
]

{ #category : #icons }
SBSImageIcon >> exclamationOctagon [
	self setImageTagUrl:'exclamation-octagon'.
]

{ #category : #icons }
SBSImageIcon >> exclamationOctagonFill [
	self setImageTagUrl:'exclamation-octagon-fill'.
]

{ #category : #icons }
SBSImageIcon >> exclamationSquare [
	self setImageTagUrl:'exclamation-square'.
]

{ #category : #icons }
SBSImageIcon >> exclamationSquareFill [
	self setImageTagUrl:'exclamation-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> exclamationTriangle [
	self setImageTagUrl:'exclamation-triangle'.
]

{ #category : #icons }
SBSImageIcon >> exclamationTriangleFill [
	self setImageTagUrl:'exclamation-triangle-fill'.
]

{ #category : #icons }
SBSImageIcon >> exclude [
	self setImageTagUrl:'exclude'.
]

{ #category : #icons }
SBSImageIcon >> eye [
	self setImageTagUrl:'eye'.
]

{ #category : #icons }
SBSImageIcon >> eyeFill [
	self setImageTagUrl:'eye-fill'.
]

{ #category : #icons }
SBSImageIcon >> eyeSlash [
	self setImageTagUrl:'eye-slash'.
]

{ #category : #icons }
SBSImageIcon >> eyeSlashFill [
	self setImageTagUrl:'eye-slash-fill'.
]

{ #category : #icons }
SBSImageIcon >> eyeglasses [
	self setImageTagUrl:'eyeglasses'.
]

{ #category : #icons }
SBSImageIcon >> file [
	self setImageTagUrl:'file'.
]

{ #category : #icons }
SBSImageIcon >> fileArrowDown [
	self setImageTagUrl:'file-arrow-down'.
]

{ #category : #icons }
SBSImageIcon >> fileArrowDownFill [
	self setImageTagUrl:'file-arrow-down-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileArrowUp [
	self setImageTagUrl:'file-arrow-up'.
]

{ #category : #icons }
SBSImageIcon >> fileArrowUpFill [
	self setImageTagUrl:'file-arrow-up-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileBinary [
	self setImageTagUrl:'file-binary'.
]

{ #category : #icons }
SBSImageIcon >> fileBinaryFill [
	self setImageTagUrl:'file-binary-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileBreak [
	self setImageTagUrl:'file-break'.
]

{ #category : #icons }
SBSImageIcon >> fileBreakFill [
	self setImageTagUrl:'file-break-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileCheck [
	self setImageTagUrl:'file-check'.
]

{ #category : #icons }
SBSImageIcon >> fileCheckFill [
	self setImageTagUrl:'file-check-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileCode [
	self setImageTagUrl:'file-code'.
]

{ #category : #icons }
SBSImageIcon >> fileCodeFill [
	self setImageTagUrl:'file-code-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileDiff [
	self setImageTagUrl:'file-diff'.
]

{ #category : #icons }
SBSImageIcon >> fileDiffFill [
	self setImageTagUrl:'file-diff-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmark [
	self setImageTagUrl:'file-earmark'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkArrowDown [
	self setImageTagUrl:'file-earmark-arrow-down'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkArrowUp [
	self setImageTagUrl:'file-earmark-arrow-up'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkArrowUpFill [
	self setImageTagUrl:'file-earmark-arrow-up-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkBinary [
	self setImageTagUrl:'file-earmark-binary'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkBinaryFill [
	self setImageTagUrl:'file-earmark-binary-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkBreak [
	self setImageTagUrl:'file-earmark-break'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkBreakFill [
	self setImageTagUrl:'file-earmark-break-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkCheck [
	self setImageTagUrl:'file-earmark-check'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkCheckFill [
	self setImageTagUrl:'file-earmark-check-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkCode [
	self setImageTagUrl:'file-earmark-code'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkCodeFill [
	self setImageTagUrl:'file-earmark-code-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkDiff [
	self setImageTagUrl:'file-earmark-diff'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkDiffFill [
	self setImageTagUrl:'file-earmark-diff-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkFill [
	self setImageTagUrl:'file-earmark-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkMedical [
	self setImageTagUrl:'file-earmark-medical'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkMedicalFill [
	self setImageTagUrl:'file-earmark-medical-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkMinus [
	self setImageTagUrl:'file-earmark-minus'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkMinusFill [
	self setImageTagUrl:'file-earmark-minus-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkPlus [
	self setImageTagUrl:'file-earmark-plus'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkPlusFill [
	self setImageTagUrl:'file-earmark-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkRuled [
	self setImageTagUrl:'file-earmark-ruled'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkRuledFill [
	self setImageTagUrl:'file-earmark-ruled-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkSpreadsheet [
	self setImageTagUrl:'file-earmark-spreadsheet'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkSpreadsheetFill [
	self setImageTagUrl:'file-earmark-spreadsheet-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkText [
	self setImageTagUrl:'file-earmark-text'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkTextFill [
	self setImageTagUrl:'file-earmark-text-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkZip [
	self setImageTagUrl:'file-earmark-zip'.
]

{ #category : #icons }
SBSImageIcon >> fileEarmarkZipFill [
	self setImageTagUrl:'file-earmark-zip-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileFill [
	self setImageTagUrl:'file-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileMedical [
	self setImageTagUrl:'file-medical'.
]

{ #category : #icons }
SBSImageIcon >> fileMedicalFill [
	self setImageTagUrl:'file-medical-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileMinus [
	self setImageTagUrl:'file-minus'.
]

{ #category : #icons }
SBSImageIcon >> fileMinusFill [
	self setImageTagUrl:'file-minus-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileMusic [
	self setImageTagUrl:'file-music'.
]

{ #category : #icons }
SBSImageIcon >> fileMusicFill [
	self setImageTagUrl:'file-music-fill'.
]

{ #category : #icons }
SBSImageIcon >> filePerson [
	self setImageTagUrl:'file-person'.
]

{ #category : #icons }
SBSImageIcon >> filePersonFill [
	self setImageTagUrl:'file-person-fill'.
]

{ #category : #icons }
SBSImageIcon >> filePlus [
	self setImageTagUrl:'file-plus'.
]

{ #category : #icons }
SBSImageIcon >> filePlusFill [
	self setImageTagUrl:'file-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> filePost [
	self setImageTagUrl:'file-post'.
]

{ #category : #icons }
SBSImageIcon >> filePostFill [
	self setImageTagUrl:'file-post-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileRichtext [
	self setImageTagUrl:'file-richtext'.
]

{ #category : #icons }
SBSImageIcon >> fileRichtextFill [
	self setImageTagUrl:'file-richtext-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileRuled [
	self setImageTagUrl:'file-ruled'.
]

{ #category : #icons }
SBSImageIcon >> fileRuledFill [
	self setImageTagUrl:'file-ruled-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileSpreadsheet [
	self setImageTagUrl:'file-spreadsheet'.
]

{ #category : #icons }
SBSImageIcon >> fileSpreadsheetFill [
	self setImageTagUrl:'file-spreadsheet-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileText [
	self setImageTagUrl:'file-text'.
]

{ #category : #icons }
SBSImageIcon >> fileTextFill [
	self setImageTagUrl:'file-text-fill'.
]

{ #category : #icons }
SBSImageIcon >> fileZip [
	self setImageTagUrl:'file-zip'.
]

{ #category : #icons }
SBSImageIcon >> fileZipFill [
	self setImageTagUrl:'file-zip-fill'.
]

{ #category : #icons }
SBSImageIcon >> files [
	self setImageTagUrl:'files'.
]

{ #category : #icons }
SBSImageIcon >> filesAlt [
	self setImageTagUrl:'files-alt'.
]

{ #category : #icons }
SBSImageIcon >> film [
	self setImageTagUrl:'film'.
]

{ #category : #icons }
SBSImageIcon >> filter [
	self setImageTagUrl:'filter'.
]

{ #category : #icons }
SBSImageIcon >> filterCircle [
	self setImageTagUrl:'filter-circle'.
]

{ #category : #icons }
SBSImageIcon >> filterCircleFill [
	self setImageTagUrl:'filter-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> filterLeft [
	self setImageTagUrl:'filter-left'.
]

{ #category : #icons }
SBSImageIcon >> filterRight [
	self setImageTagUrl:'filter-right'.
]

{ #category : #icons }
SBSImageIcon >> filterSquare [
	self setImageTagUrl:'filter-square'.
]

{ #category : #icons }
SBSImageIcon >> filterSquareFill [
	self setImageTagUrl:'filter-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> flag [
	self setImageTagUrl:'flag'.
]

{ #category : #icons }
SBSImageIcon >> flagFill [
	self setImageTagUrl:'flag-fill'.
]

{ #category : #icons }
SBSImageIcon >> flower1 [
	self setImageTagUrl:'flower1'.
]

{ #category : #icons }
SBSImageIcon >> flower2 [
	self setImageTagUrl:'flower2'.
]

{ #category : #icons }
SBSImageIcon >> flower3 [
	self setImageTagUrl:'flower3'.
]

{ #category : #icons }
SBSImageIcon >> folder [
	self setImageTagUrl:'folder'.
]

{ #category : #icons }
SBSImageIcon >> folder2 [
	self setImageTagUrl:'folder2'.
]

{ #category : #icons }
SBSImageIcon >> folder2Open [
	self setImageTagUrl:'folder2-open'.
]

{ #category : #icons }
SBSImageIcon >> folderCheck [
	self setImageTagUrl:'folder-check'.
]

{ #category : #icons }
SBSImageIcon >> folderFill [
	self setImageTagUrl:'folder-fill'.
]

{ #category : #icons }
SBSImageIcon >> folderMinus [
	self setImageTagUrl:'folder-minus'.
]

{ #category : #icons }
SBSImageIcon >> folderPlus [
	self setImageTagUrl:'folder-plus'.
]

{ #category : #icons }
SBSImageIcon >> folderSymlink [
	self setImageTagUrl:'folder-symlink'.
]

{ #category : #icons }
SBSImageIcon >> folderSymlinkFill [
	self setImageTagUrl:'folder-symlink-fill'.
]

{ #category : #icons }
SBSImageIcon >> fonts [
	self setImageTagUrl:'fonts'.
]

{ #category : #icons }
SBSImageIcon >> forward [
	self setImageTagUrl:'forward'.
]

{ #category : #icons }
SBSImageIcon >> forwardFill [
	self setImageTagUrl:'forward-fill'.
]

{ #category : #icons }
SBSImageIcon >> front [
	self setImageTagUrl:'front'.
]

{ #category : #icons }
SBSImageIcon >> fullscreen [
	self setImageTagUrl:'fullscreen'.
]

{ #category : #icons }
SBSImageIcon >> fullscreenExit [
	self setImageTagUrl:'fullscreen-exit'.
]

{ #category : #icons }
SBSImageIcon >> funnel [
	self setImageTagUrl:'funnel'.
]

{ #category : #icons }
SBSImageIcon >> funnelFill [
	self setImageTagUrl:'funnel-fill'.
]

{ #category : #icons }
SBSImageIcon >> gear [
	self setImageTagUrl:'gear'.
]

{ #category : #icons }
SBSImageIcon >> gearFill [
	self setImageTagUrl:'gear-fill'.
]

{ #category : #icons }
SBSImageIcon >> gearWide [
	self setImageTagUrl:'gear-wide'.
]

{ #category : #icons }
SBSImageIcon >> gearWideConnected [
	self setImageTagUrl:'gear-wide-connected'.
]

{ #category : #icons }
SBSImageIcon >> gem [
	self setImageTagUrl:'gem'.
]

{ #category : #icons }
SBSImageIcon >> geo [
	self setImageTagUrl:'geo'.
]

{ #category : #icons }
SBSImageIcon >> geoAlt [
	self setImageTagUrl:'geo-alt'.
]

{ #category : #icons }
SBSImageIcon >> gift [
	self setImageTagUrl:'gift'.
]

{ #category : #icons }
SBSImageIcon >> giftFill [
	self setImageTagUrl:'gift-fill'.
]

{ #category : #icons }
SBSImageIcon >> globe [
	self setImageTagUrl:'globe'.
]

{ #category : #icons }
SBSImageIcon >> globe2 [
	self setImageTagUrl:'globe2'.
]

{ #category : #icons }
SBSImageIcon >> graphDown [
	self setImageTagUrl:'graph-down'.
]

{ #category : #icons }
SBSImageIcon >> graphUp [
	self setImageTagUrl:'graph-up'.
]

{ #category : #icons }
SBSImageIcon >> grid [
	self setImageTagUrl:'grid'.
]

{ #category : #icons }
SBSImageIcon >> grid1x2 [
	self setImageTagUrl:'grid-1x2'.
]

{ #category : #icons }
SBSImageIcon >> grid1x2Fill [
	self setImageTagUrl:'grid-1x2-fill'.
]

{ #category : #icons }
SBSImageIcon >> grid3x2 [
	self setImageTagUrl:'grid-3x2'.
]

{ #category : #icons }
SBSImageIcon >> grid3x2Gap [
	self setImageTagUrl:'grid-3x2-gap'.
]

{ #category : #icons }
SBSImageIcon >> grid3x2GapFill [
	self setImageTagUrl:'grid-3x2-gap-fill'.
]

{ #category : #icons }
SBSImageIcon >> grid3x3 [
	self setImageTagUrl:'grid-3x3'.
]

{ #category : #icons }
SBSImageIcon >> grid3x3Gap [
	self setImageTagUrl:'grid-3x3-gap'.
]

{ #category : #icons }
SBSImageIcon >> grid3x3GapFill [
	self setImageTagUrl:'grid-3x3-gap-fill'.
]

{ #category : #icons }
SBSImageIcon >> gridFill [
	self setImageTagUrl:'grid-fill'.
]

{ #category : #icons }
SBSImageIcon >> gripHorizontal [
	self setImageTagUrl:'grip-horizontal'.
]

{ #category : #icons }
SBSImageIcon >> gripVertical [
	self setImageTagUrl:'grip-vertical'.
]

{ #category : #icons }
SBSImageIcon >> hammer [
	self setImageTagUrl:'hammer'.
]

{ #category : #icons }
SBSImageIcon >> handIndex [
	self setImageTagUrl:'hand-index'.
]

{ #category : #icons }
SBSImageIcon >> handIndexThumb [
	self setImageTagUrl:'hand-index-thumb'.
]

{ #category : #icons }
SBSImageIcon >> handThumbsDown [
	self setImageTagUrl:'hand-thumbs-down'.
]

{ #category : #icons }
SBSImageIcon >> handThumbsUp [
	self setImageTagUrl:'hand-thumbs-up'.
]

{ #category : #icons }
SBSImageIcon >> handbag [
	self setImageTagUrl:'handbag'.
]

{ #category : #icons }
SBSImageIcon >> handbagFill [
	self setImageTagUrl:'handbag-fill'.
]

{ #category : #icons }
SBSImageIcon >> hdd [
	self setImageTagUrl:'hdd'.
]

{ #category : #icons }
SBSImageIcon >> hddFill [
	self setImageTagUrl:'hdd-fill'.
]

{ #category : #icons }
SBSImageIcon >> hddNetwork [
	self setImageTagUrl:'hdd-network'.
]

{ #category : #icons }
SBSImageIcon >> hddNetworkFill [
	self setImageTagUrl:'hdd-network-fill'.
]

{ #category : #icons }
SBSImageIcon >> hddRack [
	self setImageTagUrl:'hdd-rack'.
]

{ #category : #icons }
SBSImageIcon >> hddRackFill [
	self setImageTagUrl:'hdd-rack-fill'.
]

{ #category : #icons }
SBSImageIcon >> hddStack [
	self setImageTagUrl:'hdd-stack'.
]

{ #category : #icons }
SBSImageIcon >> hddStackFill [
	self setImageTagUrl:'hdd-stack-fill'.
]

{ #category : #icons }
SBSImageIcon >> headphones [
	self setImageTagUrl:'headphones'.
]

{ #category : #icons }
SBSImageIcon >> headset [
	self setImageTagUrl:'headset'.
]

{ #category : #icons }
SBSImageIcon >> heart [
	self setImageTagUrl:'heart'.
]

{ #category : #icons }
SBSImageIcon >> heartFill [
	self setImageTagUrl:'heart-fill'.
]

{ #category : #icons }
SBSImageIcon >> heartHalf [
	self setImageTagUrl:'heart-half'.
]

{ #category : #icons }
SBSImageIcon >> heptagon [
	self setImageTagUrl:'heptagon'.
]

{ #category : #icons }
SBSImageIcon >> heptagonFill [
	self setImageTagUrl:'heptagon-fill'.
]

{ #category : #icons }
SBSImageIcon >> heptagonHalf [
	self setImageTagUrl:'heptagon-half'.
]

{ #category : #icons }
SBSImageIcon >> hexagon [
	self setImageTagUrl:'hexagon'.
]

{ #category : #icons }
SBSImageIcon >> hexagonFill [
	self setImageTagUrl:'hexagon-fill'.
]

{ #category : #icons }
SBSImageIcon >> hexagonHalf [
	self setImageTagUrl:'hexagon-half'.
]

{ #category : #icons }
SBSImageIcon >> hourglass [
	self setImageTagUrl:'hourglass'.
]

{ #category : #icons }
SBSImageIcon >> hourglassBottom [
	self setImageTagUrl:'hourglass-bottom'.
]

{ #category : #icons }
SBSImageIcon >> hourglassSplit [
	self setImageTagUrl:'hourglass-split'.
]

{ #category : #icons }
SBSImageIcon >> hourglassTop [
	self setImageTagUrl:'hourglass-top'.
]

{ #category : #icons }
SBSImageIcon >> house [
	self setImageTagUrl:'house'.
]

{ #category : #icons }
SBSImageIcon >> houseDoor [
	self setImageTagUrl:'house-door'.
]

{ #category : #icons }
SBSImageIcon >> houseDoorFill [
	self setImageTagUrl:'house-door-fill'.
]

{ #category : #icons }
SBSImageIcon >> houseFill [
	self setImageTagUrl:'house-fill'.
]

{ #category : #icons }
SBSImageIcon >> hr [
	self setImageTagUrl:'hr'.
]

{ #category : #icons }
SBSImageIcon >> image [
	self setImageTagUrl:'image'.
]

{ #category : #icons }
SBSImageIcon >> imageAlt [
	self setImageTagUrl:'image-alt'.
]

{ #category : #icons }
SBSImageIcon >> imageFill [
	self setImageTagUrl:'image-fill'.
]

{ #category : #icons }
SBSImageIcon >> images [
	self setImageTagUrl:'images'.
]

{ #category : #icons }
SBSImageIcon >> inbox [
	self setImageTagUrl:'inbox'.
]

{ #category : #icons }
SBSImageIcon >> inboxFill [
	self setImageTagUrl:'inbox-fill'.
]

{ #category : #icons }
SBSImageIcon >> inboxes [
	self setImageTagUrl:'inboxes'.
]

{ #category : #icons }
SBSImageIcon >> inboxesFill [
	self setImageTagUrl:'inboxes-fill'.
]

{ #category : #icons }
SBSImageIcon >> info [
	self setImageTagUrl:'info'.
]

{ #category : #icons }
SBSImageIcon >> infoCircle [
	self setImageTagUrl:'info-circle'.
]

{ #category : #icons }
SBSImageIcon >> infoCircleFill [
	self setImageTagUrl:'info-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> infoSquare [
	self setImageTagUrl:'info-square'.
]

{ #category : #icons }
SBSImageIcon >> infoSquareFill [
	self setImageTagUrl:'info-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> inputCursor [
	self setImageTagUrl:'input-cursor'.
]

{ #category : #icons }
SBSImageIcon >> inputCursorText [
	self setImageTagUrl:'input-cursor-text'.
]

{ #category : #icons }
SBSImageIcon >> intersect [
	self setImageTagUrl:'intersect'.
]

{ #category : #icons }
SBSImageIcon >> journal [
	self setImageTagUrl:'journal'.
]

{ #category : #icons }
SBSImageIcon >> journalAlbum [
	self setImageTagUrl:'journal-album'.
]

{ #category : #icons }
SBSImageIcon >> journalArrowDown [
	self setImageTagUrl:'journal-arrow-down'.
]

{ #category : #icons }
SBSImageIcon >> journalArrowUp [
	self setImageTagUrl:'journal-arrow-up'.
]

{ #category : #icons }
SBSImageIcon >> journalCheck [
	self setImageTagUrl:'journal-check'.
]

{ #category : #icons }
SBSImageIcon >> journalCode [
	self setImageTagUrl:'journal-code'.
]

{ #category : #icons }
SBSImageIcon >> journalMedical [
	self setImageTagUrl:'journal-medical'.
]

{ #category : #icons }
SBSImageIcon >> journalMinus [
	self setImageTagUrl:'journal-minus'.
]

{ #category : #icons }
SBSImageIcon >> journalPlus [
	self setImageTagUrl:'journal-plus'.
]

{ #category : #icons }
SBSImageIcon >> journalRichtext [
	self setImageTagUrl:'journal-richtext'.
]

{ #category : #icons }
SBSImageIcon >> journalText [
	self setImageTagUrl:'journal-text'.
]

{ #category : #icons }
SBSImageIcon >> journals [
	self setImageTagUrl:'journals'.
]

{ #category : #icons }
SBSImageIcon >> joystick [
	self setImageTagUrl:'joystick'.
]

{ #category : #icons }
SBSImageIcon >> justify [
	self setImageTagUrl:'justify'.
]

{ #category : #icons }
SBSImageIcon >> justifyLeft [
	self setImageTagUrl:'justify-left'.
]

{ #category : #icons }
SBSImageIcon >> justifyRight [
	self setImageTagUrl:'justify-right'.
]

{ #category : #icons }
SBSImageIcon >> kanban [
	self setImageTagUrl:'kanban'.
]

{ #category : #icons }
SBSImageIcon >> kanbanFill [
	self setImageTagUrl:'kanban-fill'.
]

{ #category : #icons }
SBSImageIcon >> key [
	self setImageTagUrl:'key'.
]

{ #category : #icons }
SBSImageIcon >> keyFill [
	self setImageTagUrl:'key-fill'.
]

{ #category : #icons }
SBSImageIcon >> keyboard [
	self setImageTagUrl:'keyboard'.
]

{ #category : #icons }
SBSImageIcon >> keyboardFill [
	self setImageTagUrl:'keyboard-fill'.
]

{ #category : #icons }
SBSImageIcon >> ladder [
	self setImageTagUrl:'ladder'.
]

{ #category : #icons }
SBSImageIcon >> lamp [
	self setImageTagUrl:'lamp'.
]

{ #category : #icons }
SBSImageIcon >> lampFill [
	self setImageTagUrl:'lamp-fill'.
]

{ #category : #icons }
SBSImageIcon >> laptop [
	self setImageTagUrl:'laptop'.
]

{ #category : #icons }
SBSImageIcon >> laptopFill [
	self setImageTagUrl:'laptop-fill'.
]

{ #category : #icons }
SBSImageIcon >> layers [
	self setImageTagUrl:'layers'.
]

{ #category : #icons }
SBSImageIcon >> layersFill [
	self setImageTagUrl:'layers-fill'.
]

{ #category : #icons }
SBSImageIcon >> layersHalf [
	self setImageTagUrl:'layers-half'.
]

{ #category : #icons }
SBSImageIcon >> layoutSidebar [
	self setImageTagUrl:'layout-sidebar'.
]

{ #category : #icons }
SBSImageIcon >> layoutSidebarInset [
	self setImageTagUrl:'layout-sidebar-inset'.
]

{ #category : #icons }
SBSImageIcon >> layoutSidebarInsetReverse [
	self setImageTagUrl:'layout-sidebar-inset-reverse'.
]

{ #category : #icons }
SBSImageIcon >> layoutSidebarReverse [
	self setImageTagUrl:'layout-sidebar-reverse'.
]

{ #category : #icons }
SBSImageIcon >> layoutSplit [
	self setImageTagUrl:'layout-split'.
]

{ #category : #icons }
SBSImageIcon >> layoutTextSidebar [
	self setImageTagUrl:'layout-text-sidebar'.
]

{ #category : #icons }
SBSImageIcon >> layoutTextSidebarReverse [
	self setImageTagUrl:'layout-text-sidebar-reverse'.
]

{ #category : #icons }
SBSImageIcon >> layoutTextWindow [
	self setImageTagUrl:'layout-text-window'.
]

{ #category : #icons }
SBSImageIcon >> layoutTextWindowReverse [
	self setImageTagUrl:'layout-text-window-reverse'.
]

{ #category : #icons }
SBSImageIcon >> layoutThreeColumns [
	self setImageTagUrl:'layout-three-columns'.
]

{ #category : #icons }
SBSImageIcon >> layoutWtf [
	self setImageTagUrl:'layout-wtf'.
]

{ #category : #icons }
SBSImageIcon >> lifePreserver [
	self setImageTagUrl:'life-preserver'.
]

{ #category : #icons }
SBSImageIcon >> lightning [
	self setImageTagUrl:'lightning'.
]

{ #category : #icons }
SBSImageIcon >> lightningFill [
	self setImageTagUrl:'lightning-fill'.
]

{ #category : #icons }
SBSImageIcon >> link [
	self setImageTagUrl:'link'.
]

{ #category : #icons }
SBSImageIcon >> link45deg [
	self setImageTagUrl:'link-45deg'.
]

{ #category : #icons }
SBSImageIcon >> list [
	self setImageTagUrl:'list'.
]

{ #category : #icons }
SBSImageIcon >> listCheck [
	self setImageTagUrl:'list-check'.
]

{ #category : #icons }
SBSImageIcon >> listNested [
	self setImageTagUrl:'list-nested'.
]

{ #category : #icons }
SBSImageIcon >> listOl [
	self setImageTagUrl:'list-ol'.
]

{ #category : #icons }
SBSImageIcon >> listStars [
	self setImageTagUrl:'list-stars'.
]

{ #category : #icons }
SBSImageIcon >> listTask [
	self setImageTagUrl:'list-task'.
]

{ #category : #icons }
SBSImageIcon >> listUl [
	self setImageTagUrl:'list-ul'.
]

{ #category : #icons }
SBSImageIcon >> lock [
	self setImageTagUrl:'lock'.
]

{ #category : #icons }
SBSImageIcon >> lockFill [
	self setImageTagUrl:'lock-fill'.
]

{ #category : #icons }
SBSImageIcon >> mailbox [
	self setImageTagUrl:'mailbox'.
]

{ #category : #icons }
SBSImageIcon >> mailbox2 [
	self setImageTagUrl:'mailbox2'.
]

{ #category : #icons }
SBSImageIcon >> map [
	self setImageTagUrl:'map'.
]

{ #category : #icons }
SBSImageIcon >> markdown [
	self setImageTagUrl:'markdown'.
]

{ #category : #icons }
SBSImageIcon >> markdownFill [
	self setImageTagUrl:'markdown-fill'.
]

{ #category : #icons }
SBSImageIcon >> menuApp [
	self setImageTagUrl:'menu-app'.
]

{ #category : #icons }
SBSImageIcon >> menuAppFill [
	self setImageTagUrl:'menu-app-fill'.
]

{ #category : #icons }
SBSImageIcon >> menuButton [
	self setImageTagUrl:'menu-button'.
]

{ #category : #icons }
SBSImageIcon >> menuButtonFill [
	self setImageTagUrl:'menu-button-fill'.
]

{ #category : #icons }
SBSImageIcon >> menuButtonWide [
	self setImageTagUrl:'menu-button-wide'.
]

{ #category : #icons }
SBSImageIcon >> menuButtonWideFill [
	self setImageTagUrl:'menu-button-wide-fill'.
]

{ #category : #icons }
SBSImageIcon >> menuDown [
	self setImageTagUrl:'menu-down'.
]

{ #category : #icons }
SBSImageIcon >> menuUp [
	self setImageTagUrl:'menu-up'.
]

{ #category : #icons }
SBSImageIcon >> mic [
	self setImageTagUrl:'mic'.
]

{ #category : #icons }
SBSImageIcon >> micFill [
	self setImageTagUrl:'mic-fill'.
]

{ #category : #icons }
SBSImageIcon >> micMute [
	self setImageTagUrl:'mic-mute'.
]

{ #category : #icons }
SBSImageIcon >> micMuteFill [
	self setImageTagUrl:'mic-mute-fill'.
]

{ #category : #icons }
SBSImageIcon >> minecart [
	self setImageTagUrl:'minecart'.
]

{ #category : #icons }
SBSImageIcon >> minecartLoaded [
	self setImageTagUrl:'minecart-loaded'.
]

{ #category : #icons }
SBSImageIcon >> moon [
	self setImageTagUrl:'moon'.
]

{ #category : #icons }
SBSImageIcon >> mouse [
	self setImageTagUrl:'mouse'.
]

{ #category : #icons }
SBSImageIcon >> mouse2 [
	self setImageTagUrl:'mouse2'.
]

{ #category : #icons }
SBSImageIcon >> mouse3 [
	self setImageTagUrl:'mouse3'.
]

{ #category : #icons }
SBSImageIcon >> musicNote [
	self setImageTagUrl:'music-note'.
]

{ #category : #icons }
SBSImageIcon >> musicNoteBeamed [
	self setImageTagUrl:'music-note-beamed'.
]

{ #category : #icons }
SBSImageIcon >> musicNoteList [
	self setImageTagUrl:'music-note-list'.
]

{ #category : #icons }
SBSImageIcon >> musicPlayer [
	self setImageTagUrl:'music-player'.
]

{ #category : #icons }
SBSImageIcon >> musicPlayerFill [
	self setImageTagUrl:'music-player-fill'.
]

{ #category : #icons }
SBSImageIcon >> newspaper [
	self setImageTagUrl:'newspaper'.
]

{ #category : #icons }
SBSImageIcon >> nodeMinus [
	self setImageTagUrl:'node-minus'.
]

{ #category : #icons }
SBSImageIcon >> nodeMinusFill [
	self setImageTagUrl:'node-minus-fill'.
]

{ #category : #icons }
SBSImageIcon >> nodePlus [
	self setImageTagUrl:'node-plus'.
]

{ #category : #icons }
SBSImageIcon >> nodePlusFill [
	self setImageTagUrl:'node-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> nut [
	self setImageTagUrl:'nut'.
]

{ #category : #icons }
SBSImageIcon >> nutFill [
	self setImageTagUrl:'nut-fill'.
]

{ #category : #icons }
SBSImageIcon >> octagon [
	self setImageTagUrl:'octagon'.
]

{ #category : #icons }
SBSImageIcon >> octagonFill [
	self setImageTagUrl:'octagon-fill'.
]

{ #category : #icons }
SBSImageIcon >> octagonHalf [
	self setImageTagUrl:'octagon-half'.
]

{ #category : #icons }
SBSImageIcon >> option [
	self setImageTagUrl:'option'.
]

{ #category : #icons }
SBSImageIcon >> outlet [
	self setImageTagUrl:'outlet'.
]

{ #category : #icons }
SBSImageIcon >> paperclip [
	self setImageTagUrl:'paperclip'.
]

{ #category : #icons }
SBSImageIcon >> paragraph [
	self setImageTagUrl:'paragraph'.
]

{ #category : #icons }
SBSImageIcon >> patchCheck [
	self setImageTagUrl:'patch-check'.
]

{ #category : #icons }
SBSImageIcon >> patchCheckFll [
	self setImageTagUrl:'patch-check-fll'.
]

{ #category : #icons }
SBSImageIcon >> patchExclamation [
	self setImageTagUrl:'patch-exclamation'.
]

{ #category : #icons }
SBSImageIcon >> patchExclamationFll [
	self setImageTagUrl:'patch-exclamation-fll'.
]

{ #category : #icons }
SBSImageIcon >> patchMinus [
	self setImageTagUrl:'patch-minus'.
]

{ #category : #icons }
SBSImageIcon >> patchMinusFll [
	self setImageTagUrl:'patch-minus-fll'.
]

{ #category : #icons }
SBSImageIcon >> patchPlus [
	self setImageTagUrl:'patch-plus'.
]

{ #category : #icons }
SBSImageIcon >> patchPlusFll [
	self setImageTagUrl:'patch-plus-fll'.
]

{ #category : #icons }
SBSImageIcon >> patchQuestion [
	self setImageTagUrl:'patch-question'.
]

{ #category : #icons }
SBSImageIcon >> patchQuestionFll [
	self setImageTagUrl:'patch-question-fll'.
]

{ #category : #icons }
SBSImageIcon >> pause [
	self setImageTagUrl:'pause'.
]

{ #category : #icons }
SBSImageIcon >> pauseFill [
	self setImageTagUrl:'pause-fill'.
]

{ #category : #icons }
SBSImageIcon >> peace [
	self setImageTagUrl:'peace'.
]

{ #category : #icons }
SBSImageIcon >> peaceFill [
	self setImageTagUrl:'peace-fill'.
]

{ #category : #icons }
SBSImageIcon >> pen [
	self setImageTagUrl:'pen'.
]

{ #category : #icons }
SBSImageIcon >> pencil [
	self setImageTagUrl:'pencil'.
]

{ #category : #icons }
SBSImageIcon >> pencilSquare [
	self setImageTagUrl:'pencil-square'.
]

{ #category : #icons }
SBSImageIcon >> pentagon [
	self setImageTagUrl:'pentagon'.
]

{ #category : #icons }
SBSImageIcon >> pentagonFill [
	self setImageTagUrl:'pentagon-fill'.
]

{ #category : #icons }
SBSImageIcon >> pentagonHalf [
	self setImageTagUrl:'pentagon-half'.
]

{ #category : #icons }
SBSImageIcon >> people [
	self setImageTagUrl:'people'.
]

{ #category : #icons }
SBSImageIcon >> peopleFill [
	self setImageTagUrl:'people-fill'.
]

{ #category : #icons }
SBSImageIcon >> percent [
	self setImageTagUrl:'percent'.
]

{ #category : #icons }
SBSImageIcon >> person [
	self setImageTagUrl:'person'.
]

{ #category : #icons }
SBSImageIcon >> personBadge [
	self setImageTagUrl:'person-badge'.
]

{ #category : #icons }
SBSImageIcon >> personBadgeFill [
	self setImageTagUrl:'person-badge-fill'.
]

{ #category : #icons }
SBSImageIcon >> personBoundingBox [
	self setImageTagUrl:'person-bounding-box'.
]

{ #category : #icons }
SBSImageIcon >> personCheck [
	self setImageTagUrl:'person-check'.
]

{ #category : #icons }
SBSImageIcon >> personCheckFill [
	self setImageTagUrl:'person-check-fill'.
]

{ #category : #icons }
SBSImageIcon >> personCircle [
	self setImageTagUrl:'person-circle'.
]

{ #category : #icons }
SBSImageIcon >> personDash [
	self setImageTagUrl:'person-dash'.
]

{ #category : #icons }
SBSImageIcon >> personDashFill [
	self setImageTagUrl:'person-dash-fill'.
]

{ #category : #icons }
SBSImageIcon >> personFill [
	self setImageTagUrl:'person-fill'.
]

{ #category : #icons }
SBSImageIcon >> personLinesFill [
	self setImageTagUrl:'person-lines-fill'.
]

{ #category : #icons }
SBSImageIcon >> personPlus [
	self setImageTagUrl:'person-plus'.
]

{ #category : #icons }
SBSImageIcon >> personPlusFill [
	self setImageTagUrl:'person-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> personSquare [
	self setImageTagUrl:'person-square'.
]

{ #category : #icons }
SBSImageIcon >> phone [
	self setImageTagUrl:'phone'.
]

{ #category : #icons }
SBSImageIcon >> phoneFill [
	self setImageTagUrl:'phone-fill'.
]

{ #category : #icons }
SBSImageIcon >> phoneLandscape [
	self setImageTagUrl:'phone-landscape'.
]

{ #category : #icons }
SBSImageIcon >> phoneLandscapeFill [
	self setImageTagUrl:'phone-landscape-fill'.
]

{ #category : #icons }
SBSImageIcon >> pieChart [
	self setImageTagUrl:'pie-chart'.
]

{ #category : #icons }
SBSImageIcon >> pieChartFill [
	self setImageTagUrl:'pie-chart-fill'.
]

{ #category : #icons }
SBSImageIcon >> pip [
	self setImageTagUrl:'pip'.
]

{ #category : #icons }
SBSImageIcon >> pipFill [
	self setImageTagUrl:'pip-fill'.
]

{ #category : #icons }
SBSImageIcon >> play [
	self setImageTagUrl:'play'.
]

{ #category : #icons }
SBSImageIcon >> playFill [
	self setImageTagUrl:'play-fill'.
]

{ #category : #icons }
SBSImageIcon >> plug [
	self setImageTagUrl:'plug'.
]

{ #category : #icons }
SBSImageIcon >> plus [
	self setImageTagUrl:'plus'.
]

{ #category : #icons }
SBSImageIcon >> plusCircle [
	self setImageTagUrl:'plus-circle'.
]

{ #category : #icons }
SBSImageIcon >> plusCircleFill [
	self setImageTagUrl:'plus-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> plusSquare [
	self setImageTagUrl:'plus-square'.
]

{ #category : #icons }
SBSImageIcon >> plusSquareFill [
	self setImageTagUrl:'plus-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> power [
	self setImageTagUrl:'power'.
]

{ #category : #icons }
SBSImageIcon >> printer [
	self setImageTagUrl:'printer'.
]

{ #category : #icons }
SBSImageIcon >> printerFill [
	self setImageTagUrl:'printer-fill'.
]

{ #category : #icons }
SBSImageIcon >> puzzle [
	self setImageTagUrl:'puzzle'.
]

{ #category : #icons }
SBSImageIcon >> puzzleFill [
	self setImageTagUrl:'puzzle-fill'.
]

{ #category : #icons }
SBSImageIcon >> question [
	self setImageTagUrl:'question'.
]

{ #category : #icons }
SBSImageIcon >> questionCircle [
	self setImageTagUrl:'question-circle'.
]

{ #category : #icons }
SBSImageIcon >> questionCircleFill [
	self setImageTagUrl:'question-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> questionDiamond [
	self setImageTagUrl:'question-diamond'.
]

{ #category : #icons }
SBSImageIcon >> questionDiamondFill [
	self setImageTagUrl:'question-diamond-fill'.
]

{ #category : #icons }
SBSImageIcon >> questionOctagon [
	self setImageTagUrl:'question-octagon'.
]

{ #category : #icons }
SBSImageIcon >> questionOctagonFill [
	self setImageTagUrl:'question-octagon-fill'.
]

{ #category : #icons }
SBSImageIcon >> questionSquare [
	self setImageTagUrl:'question-square'.
]

{ #category : #icons }
SBSImageIcon >> questionSquareFill [
	self setImageTagUrl:'question-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> receipt [
	self setImageTagUrl:'receipt'.
]

{ #category : #icons }
SBSImageIcon >> receiptCutoff [
	self setImageTagUrl:'receipt-cutoff'.
]

{ #category : #icons }
SBSImageIcon >> reception0 [
	self setImageTagUrl:'reception-0'.
]

{ #category : #icons }
SBSImageIcon >> reception1 [
	self setImageTagUrl:'reception-1'.
]

{ #category : #icons }
SBSImageIcon >> reception2 [
	self setImageTagUrl:'reception-2'.
]

{ #category : #icons }
SBSImageIcon >> reception3 [
	self setImageTagUrl:'reception-3'.
]

{ #category : #icons }
SBSImageIcon >> reception4 [
	self setImageTagUrl:'reception-4'.
]

{ #category : #icons }
SBSImageIcon >> reply [
	self setImageTagUrl:'reply'.
]

{ #category : #icons }
SBSImageIcon >> replyAll [
	self setImageTagUrl:'reply-all'.
]

{ #category : #icons }
SBSImageIcon >> replyAllFill [
	self setImageTagUrl:'reply-all-fill'.
]

{ #category : #icons }
SBSImageIcon >> replyFill [
	self setImageTagUrl:'reply-fill'.
]

{ #category : #icons }
SBSImageIcon >> rss [
	self setImageTagUrl:'rss'.
]

{ #category : #icons }
SBSImageIcon >> rssFill [
	self setImageTagUrl:'rss-fill'.
]

{ #category : #icons }
SBSImageIcon >> screwdriver [
	self setImageTagUrl:'screwdriver'.
]

{ #category : #icons }
SBSImageIcon >> search [
	self setImageTagUrl:'search'.
]

{ #category : #icons }
SBSImageIcon >> segmentedNav [
	self setImageTagUrl:'segmented-nav'.
]

{ #category : #icons }
SBSImageIcon >> server [
	self setImageTagUrl:'server'.
]

{ #category : #initialization }
SBSImageIcon >> setImageTag: aWAImageTag [ 

	imageTag := aWAImageTag
]

{ #category : #initialization }
SBSImageIcon >> setImageTagUrl: name [

	imageTag url: (SBSIconTag imageUrlFor: name)
]

{ #category : #icons }
SBSImageIcon >> share [
	self setImageTagUrl:'share'.
]

{ #category : #icons }
SBSImageIcon >> shareFill [
	self setImageTagUrl:'share-fill'.
]

{ #category : #icons }
SBSImageIcon >> shield [
	self setImageTagUrl:'shield'.
]

{ #category : #icons }
SBSImageIcon >> shieldCheck [
	self setImageTagUrl:'shield-check'.
]

{ #category : #icons }
SBSImageIcon >> shieldExclamation [
	self setImageTagUrl:'shield-exclamation'.
]

{ #category : #icons }
SBSImageIcon >> shieldFill [
	self setImageTagUrl:'shield-fill'.
]

{ #category : #icons }
SBSImageIcon >> shieldFillCheck [
	self setImageTagUrl:'shield-fill-check'.
]

{ #category : #icons }
SBSImageIcon >> shieldFillExclamation [
	self setImageTagUrl:'shield-fill-exclamation'.
]

{ #category : #icons }
SBSImageIcon >> shieldFillMinus [
	self setImageTagUrl:'shield-fill-minus'.
]

{ #category : #icons }
SBSImageIcon >> shieldFillPlus [
	self setImageTagUrl:'shield-fill-plus'.
]

{ #category : #icons }
SBSImageIcon >> shieldLock [
	self setImageTagUrl:'shield-lock'.
]

{ #category : #icons }
SBSImageIcon >> shieldLockFill [
	self setImageTagUrl:'shield-lock-fill'.
]

{ #category : #icons }
SBSImageIcon >> shieldMinus [
	self setImageTagUrl:'shield-minus'.
]

{ #category : #icons }
SBSImageIcon >> shieldPlus [
	self setImageTagUrl:'shield-plus'.
]

{ #category : #icons }
SBSImageIcon >> shieldShaded [
	self setImageTagUrl:'shield-shaded'.
]

{ #category : #icons }
SBSImageIcon >> shieldSlash [
	self setImageTagUrl:'shield-slash'.
]

{ #category : #icons }
SBSImageIcon >> shieldSlashFill [
	self setImageTagUrl:'shield-slash-fill'.
]

{ #category : #icons }
SBSImageIcon >> shift [
	self setImageTagUrl:'shift'.
]

{ #category : #icons }
SBSImageIcon >> shiftFill [
	self setImageTagUrl:'shift-fill'.
]

{ #category : #icons }
SBSImageIcon >> shop [
	self setImageTagUrl:'shop'.
]

{ #category : #icons }
SBSImageIcon >> shopWindow [
	self setImageTagUrl:'shop-window'.
]

{ #category : #icons }
SBSImageIcon >> shuffle [
	self setImageTagUrl:'shuffle'.
]

{ #category : #icons }
SBSImageIcon >> signpost [
	self setImageTagUrl:'signpost'.
]

{ #category : #icons }
SBSImageIcon >> signpost2 [
	self setImageTagUrl:'signpost-2'.
]

{ #category : #icons }
SBSImageIcon >> signpost2Fill [
	self setImageTagUrl:'signpost-2-fill'.
]

{ #category : #icons }
SBSImageIcon >> signpostFill [
	self setImageTagUrl:'signpost-fill'.
]

{ #category : #icons }
SBSImageIcon >> signpostSplit [
	self setImageTagUrl:'signpost-split'.
]

{ #category : #icons }
SBSImageIcon >> signpostSplitFill [
	self setImageTagUrl:'signpost-split-fill'.
]

{ #category : #icons }
SBSImageIcon >> sim [
	self setImageTagUrl:'sim'.
]

{ #category : #icons }
SBSImageIcon >> simFill [
	self setImageTagUrl:'sim-fill'.
]

{ #category : #icons }
SBSImageIcon >> skipBackward [
	self setImageTagUrl:'skip-backward'.
]

{ #category : #icons }
SBSImageIcon >> skipBackwardFill [
	self setImageTagUrl:'skip-backward-fill'.
]

{ #category : #icons }
SBSImageIcon >> skipEnd [
	self setImageTagUrl:'skip-end'.
]

{ #category : #icons }
SBSImageIcon >> skipEndFill [
	self setImageTagUrl:'skip-end-fill'.
]

{ #category : #icons }
SBSImageIcon >> skipForward [
	self setImageTagUrl:'skip-forward'.
]

{ #category : #icons }
SBSImageIcon >> skipForwardFill [
	self setImageTagUrl:'skip-forward-fill'.
]

{ #category : #icons }
SBSImageIcon >> skipStart [
	self setImageTagUrl:'skip-start'.
]

{ #category : #icons }
SBSImageIcon >> skipStartFill [
	self setImageTagUrl:'skip-start-fill'.
]

{ #category : #icons }
SBSImageIcon >> slash [
	self setImageTagUrl:'slash'.
]

{ #category : #icons }
SBSImageIcon >> slashCircle [
	self setImageTagUrl:'slash-circle'.
]

{ #category : #icons }
SBSImageIcon >> slashCircleFill [
	self setImageTagUrl:'slash-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> slashSquare [
	self setImageTagUrl:'slash-square'.
]

{ #category : #icons }
SBSImageIcon >> slashSquareFill [
	self setImageTagUrl:'slash-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> sliders [
	self setImageTagUrl:'sliders'.
]

{ #category : #icons }
SBSImageIcon >> smartwatch [
	self setImageTagUrl:'smartwatch'.
]

{ #category : #icons }
SBSImageIcon >> sortAlphaDown [
	self setImageTagUrl:'sort-alpha-down'.
]

{ #category : #icons }
SBSImageIcon >> sortAlphaDownAlt [
	self setImageTagUrl:'sort-alpha-down-alt'.
]

{ #category : #icons }
SBSImageIcon >> sortAlphaUp [
	self setImageTagUrl:'sort-alpha-up'.
]

{ #category : #icons }
SBSImageIcon >> sortAlphaUpAlt [
	self setImageTagUrl:'sort-alpha-up-alt'.
]

{ #category : #icons }
SBSImageIcon >> sortDown [
	self setImageTagUrl:'sort-down'.
]

{ #category : #icons }
SBSImageIcon >> sortDownAlt [
	self setImageTagUrl:'sort-down-alt'.
]

{ #category : #icons }
SBSImageIcon >> sortNumericDown [
	self setImageTagUrl:'sort-numeric-down'.
]

{ #category : #icons }
SBSImageIcon >> sortNumericDownAlt [
	self setImageTagUrl:'sort-numeric-down-alt'.
]

{ #category : #icons }
SBSImageIcon >> sortNumericUp [
	self setImageTagUrl:'sort-numeric-up'.
]

{ #category : #icons }
SBSImageIcon >> sortNumericUpAlt [
	self setImageTagUrl:'sort-numeric-up-alt'.
]

{ #category : #icons }
SBSImageIcon >> sortUp [
	self setImageTagUrl:'sort-up'.
]

{ #category : #icons }
SBSImageIcon >> sortUpAlt [
	self setImageTagUrl:'sort-up-alt'.
]

{ #category : #icons }
SBSImageIcon >> soundwave [
	self setImageTagUrl:'soundwave'.
]

{ #category : #icons }
SBSImageIcon >> speaker [
	self setImageTagUrl:'speaker'.
]

{ #category : #icons }
SBSImageIcon >> spellcheck [
	self setImageTagUrl:'spellcheck'.
]

{ #category : #icons }
SBSImageIcon >> square [
	self setImageTagUrl:'square'.
]

{ #category : #icons }
SBSImageIcon >> squareFill [
	self setImageTagUrl:'square-fill'.
]

{ #category : #icons }
SBSImageIcon >> squareHalf [
	self setImageTagUrl:'square-half'.
]

{ #category : #icons }
SBSImageIcon >> star [
	self setImageTagUrl:'star'.
]

{ #category : #icons }
SBSImageIcon >> starFill [
	self setImageTagUrl:'star-fill'.
]

{ #category : #icons }
SBSImageIcon >> starHalf [
	self setImageTagUrl:'star-half'.
]

{ #category : #icons }
SBSImageIcon >> stickies [
	self setImageTagUrl:'stickies'.
]

{ #category : #icons }
SBSImageIcon >> stickiesFill [
	self setImageTagUrl:'stickies-fill'.
]

{ #category : #icons }
SBSImageIcon >> sticky [
	self setImageTagUrl:'sticky'.
]

{ #category : #icons }
SBSImageIcon >> stickyFill [
	self setImageTagUrl:'sticky-fill'.
]

{ #category : #icons }
SBSImageIcon >> stop [
	self setImageTagUrl:'stop'.
]

{ #category : #icons }
SBSImageIcon >> stopFill [
	self setImageTagUrl:'stop-fill'.
]

{ #category : #icons }
SBSImageIcon >> stoplights [
	self setImageTagUrl:'stoplights'.
]

{ #category : #icons }
SBSImageIcon >> stoplightsFill [
	self setImageTagUrl:'stoplights-fill'.
]

{ #category : #icons }
SBSImageIcon >> stopwatch [
	self setImageTagUrl:'stopwatch'.
]

{ #category : #icons }
SBSImageIcon >> stopwatchFill [
	self setImageTagUrl:'stopwatch-fill'.
]

{ #category : #icons }
SBSImageIcon >> subtract [
	self setImageTagUrl:'subtract'.
]

{ #category : #icons }
SBSImageIcon >> suitClub [
	self setImageTagUrl:'suit-club'.
]

{ #category : #icons }
SBSImageIcon >> suitClubFill [
	self setImageTagUrl:'suit-club-fill'.
]

{ #category : #icons }
SBSImageIcon >> suitDiamond [
	self setImageTagUrl:'suit-diamond'.
]

{ #category : #icons }
SBSImageIcon >> suitDiamondFill [
	self setImageTagUrl:'suit-diamond-fill'.
]

{ #category : #icons }
SBSImageIcon >> suitHeart [
	self setImageTagUrl:'suit-heart'.
]

{ #category : #icons }
SBSImageIcon >> suitHeartFill [
	self setImageTagUrl:'suit-heart-fill'.
]

{ #category : #icons }
SBSImageIcon >> suitSpade [
	self setImageTagUrl:'suit-spade'.
]

{ #category : #icons }
SBSImageIcon >> suitSpadeFill [
	self setImageTagUrl:'suit-spade-fill'.
]

{ #category : #icons }
SBSImageIcon >> sun [
	self setImageTagUrl:'sun'.
]

{ #category : #icons }
SBSImageIcon >> sunglasses [
	self setImageTagUrl:'sunglasses'.
]

{ #category : #icons }
SBSImageIcon >> table [
	self setImageTagUrl:'table'.
]

{ #category : #icons }
SBSImageIcon >> tablet [
	self setImageTagUrl:'tablet'.
]

{ #category : #icons }
SBSImageIcon >> tabletFill [
	self setImageTagUrl:'tablet-fill'.
]

{ #category : #icons }
SBSImageIcon >> tabletLandscape [
	self setImageTagUrl:'tablet-landscape'.
]

{ #category : #icons }
SBSImageIcon >> tabletLandscapeFill [
	self setImageTagUrl:'tablet-landscape-fill'.
]

{ #category : #icons }
SBSImageIcon >> tagFill [
	self setImageTagUrl:'tag-fill'.
]

{ #category : #icons }
SBSImageIcon >> tags [
	self setImageTagUrl:'tags'.
]

{ #category : #icons }
SBSImageIcon >> tagsFill [
	self setImageTagUrl:'tags-fill'.
]

{ #category : #icons }
SBSImageIcon >> telephone [
	self setImageTagUrl:'telephone'.
]

{ #category : #icons }
SBSImageIcon >> telephoneFill [
	self setImageTagUrl:'telephone-fill'.
]

{ #category : #icons }
SBSImageIcon >> telephoneForward [
	self setImageTagUrl:'telephone-forward'.
]

{ #category : #icons }
SBSImageIcon >> telephoneForwardFill [
	self setImageTagUrl:'telephone-forward-fill'.
]

{ #category : #icons }
SBSImageIcon >> telephoneInbound [
	self setImageTagUrl:'telephone-inbound'.
]

{ #category : #icons }
SBSImageIcon >> telephoneInboundFill [
	self setImageTagUrl:'telephone-inbound-fill'.
]

{ #category : #icons }
SBSImageIcon >> telephoneMinus [
	self setImageTagUrl:'telephone-minus'.
]

{ #category : #icons }
SBSImageIcon >> telephoneMinusFill [
	self setImageTagUrl:'telephone-minus-fill'.
]

{ #category : #icons }
SBSImageIcon >> telephoneOutbound [
	self setImageTagUrl:'telephone-outbound'.
]

{ #category : #icons }
SBSImageIcon >> telephoneOutboundFill [
	self setImageTagUrl:'telephone-outbound-fill'.
]

{ #category : #icons }
SBSImageIcon >> telephonePlus [
	self setImageTagUrl:'telephone-plus'.
]

{ #category : #icons }
SBSImageIcon >> telephonePlusFill [
	self setImageTagUrl:'telephone-plus-fill'.
]

{ #category : #icons }
SBSImageIcon >> telephoneX [
	self setImageTagUrl:'telephone-x'.
]

{ #category : #icons }
SBSImageIcon >> telephoneXFill [
	self setImageTagUrl:'telephone-x-fill'.
]

{ #category : #icons }
SBSImageIcon >> terminal [
	self setImageTagUrl:'terminal'.
]

{ #category : #icons }
SBSImageIcon >> terminalFill [
	self setImageTagUrl:'terminal-fill'.
]

{ #category : #icons }
SBSImageIcon >> textCenter [
	self setImageTagUrl:'text-center'.
]

{ #category : #icons }
SBSImageIcon >> textIndentLeft [
	self setImageTagUrl:'text-indent-left'.
]

{ #category : #icons }
SBSImageIcon >> textIndentRight [
	self setImageTagUrl:'text-indent-right'.
]

{ #category : #icons }
SBSImageIcon >> textLeft [
	self setImageTagUrl:'text-left'.
]

{ #category : #icons }
SBSImageIcon >> textRight [
	self setImageTagUrl:'text-right'.
]

{ #category : #icons }
SBSImageIcon >> textarea [
	self setImageTagUrl:'textarea'.
]

{ #category : #icons }
SBSImageIcon >> textareaResize [
	self setImageTagUrl:'textarea-resize'.
]

{ #category : #icons }
SBSImageIcon >> textareaT [
	self setImageTagUrl:'textarea-t'.
]

{ #category : #icons }
SBSImageIcon >> thermometer [
	self setImageTagUrl:'thermometer'.
]

{ #category : #icons }
SBSImageIcon >> thermometerHalf [
	self setImageTagUrl:'thermometer-half'.
]

{ #category : #icons }
SBSImageIcon >> threeDots [
	self setImageTagUrl:'three-dots'.
]

{ #category : #icons }
SBSImageIcon >> threeDotsVertical [
	self setImageTagUrl:'three-dots-vertical'.
]

{ #category : #icons }
SBSImageIcon >> toggle2Off [
	self setImageTagUrl:'toggle2-off'.
]

{ #category : #icons }
SBSImageIcon >> toggle2On [
	self setImageTagUrl:'toggle2-on'.
]

{ #category : #icons }
SBSImageIcon >> toggleOff [
	self setImageTagUrl:'toggle-off'.
]

{ #category : #icons }
SBSImageIcon >> toggleOn [
	self setImageTagUrl:'toggle-on'.
]

{ #category : #icons }
SBSImageIcon >> toggles [
	self setImageTagUrl:'toggles'.
]

{ #category : #icons }
SBSImageIcon >> toggles2 [
	self setImageTagUrl:'toggles2'.
]

{ #category : #icons }
SBSImageIcon >> tools [
	self setImageTagUrl:'tools'.
]

{ #category : #icons }
SBSImageIcon >> trash [
	self setImageTagUrl:'trash'.
]

{ #category : #icons }
SBSImageIcon >> trash2 [
	self setImageTagUrl:'trash2'.
]

{ #category : #icons }
SBSImageIcon >> trash2Fill [
	self setImageTagUrl:'trash2-fill'.
]

{ #category : #icons }
SBSImageIcon >> trashFill [
	self setImageTagUrl:'trash-fill'.
]

{ #category : #icons }
SBSImageIcon >> tree [
	self setImageTagUrl:'tree'.
]

{ #category : #icons }
SBSImageIcon >> treeFill [
	self setImageTagUrl:'tree-fill'.
]

{ #category : #icons }
SBSImageIcon >> triangle [
	self setImageTagUrl:'triangle'.
]

{ #category : #icons }
SBSImageIcon >> triangleFill [
	self setImageTagUrl:'triangle-fill'.
]

{ #category : #icons }
SBSImageIcon >> triangleHalf [
	self setImageTagUrl:'triangle-half'.
]

{ #category : #icons }
SBSImageIcon >> trophy [
	self setImageTagUrl:'trophy'.
]

{ #category : #icons }
SBSImageIcon >> truck [
	self setImageTagUrl:'truck'.
]

{ #category : #icons }
SBSImageIcon >> truckFlatbed [
	self setImageTagUrl:'truck-flatbed'.
]

{ #category : #icons }
SBSImageIcon >> tv [
	self setImageTagUrl:'tv'.
]

{ #category : #icons }
SBSImageIcon >> tvFill [
	self setImageTagUrl:'tv-fill'.
]

{ #category : #icons }
SBSImageIcon >> type [
	self setImageTagUrl:'type'.
]

{ #category : #icons }
SBSImageIcon >> typeBold [
	self setImageTagUrl:'type-bold'.
]

{ #category : #icons }
SBSImageIcon >> typeH1 [
	self setImageTagUrl:'type-h1'.
]

{ #category : #icons }
SBSImageIcon >> typeH2 [
	self setImageTagUrl:'type-h2'.
]

{ #category : #icons }
SBSImageIcon >> typeH3 [
	self setImageTagUrl:'type-h3'.
]

{ #category : #icons }
SBSImageIcon >> typeItalic [
	self setImageTagUrl:'type-italic'.
]

{ #category : #icons }
SBSImageIcon >> typeStrikethrough [
	self setImageTagUrl:'type-strikethrough'.
]

{ #category : #icons }
SBSImageIcon >> typeUnderline [
	self setImageTagUrl:'type-underline'.
]

{ #category : #icons }
SBSImageIcon >> uiChecks [
	self setImageTagUrl:'ui-checks'.
]

{ #category : #icons }
SBSImageIcon >> uiRadios [
	self setImageTagUrl:'ui-radios'.
]

{ #category : #icons }
SBSImageIcon >> union [
	self setImageTagUrl:'union'.
]

{ #category : #icons }
SBSImageIcon >> unlock [
	self setImageTagUrl:'unlock'.
]

{ #category : #icons }
SBSImageIcon >> unlockFill [
	self setImageTagUrl:'unlock-fill'.
]

{ #category : #icons }
SBSImageIcon >> upc [
	self setImageTagUrl:'upc'.
]

{ #category : #icons }
SBSImageIcon >> upcScan [
	self setImageTagUrl:'upc-scan'.
]

{ #category : #icons }
SBSImageIcon >> upload [
	self setImageTagUrl:'upload'.
]

{ #category : #icons }
SBSImageIcon >> viewList [
	self setImageTagUrl:'view-list'.
]

{ #category : #icons }
SBSImageIcon >> viewStacked [
	self setImageTagUrl:'view-stacked'.
]

{ #category : #icons }
SBSImageIcon >> voicemail [
	self setImageTagUrl:'voicemail'.
]

{ #category : #icons }
SBSImageIcon >> volumeDown [
	self setImageTagUrl:'volume-down'.
]

{ #category : #icons }
SBSImageIcon >> volumeDownFill [
	self setImageTagUrl:'volume-down-fill'.
]

{ #category : #icons }
SBSImageIcon >> volumeMute [
	self setImageTagUrl:'volume-mute'.
]

{ #category : #icons }
SBSImageIcon >> volumeMuteFill [
	self setImageTagUrl:'volume-mute-fill'.
]

{ #category : #icons }
SBSImageIcon >> volumeOff [
	self setImageTagUrl:'volume-off'.
]

{ #category : #icons }
SBSImageIcon >> volumeOffFill [
	self setImageTagUrl:'volume-off-fill'.
]

{ #category : #icons }
SBSImageIcon >> volumeUp [
	self setImageTagUrl:'volume-up'.
]

{ #category : #icons }
SBSImageIcon >> volumeUpFill [
	self setImageTagUrl:'volume-up-fill'.
]

{ #category : #icons }
SBSImageIcon >> vr [
	self setImageTagUrl:'vr'.
]

{ #category : #icons }
SBSImageIcon >> wallet [
	self setImageTagUrl:'wallet'.
]

{ #category : #icons }
SBSImageIcon >> wallet2 [
	self setImageTagUrl:'wallet2'.
]

{ #category : #icons }
SBSImageIcon >> walletFill [
	self setImageTagUrl:'wallet-fill'.
]

{ #category : #icons }
SBSImageIcon >> watch [
	self setImageTagUrl:'watch'.
]

{ #category : #icons }
SBSImageIcon >> wifi [
	self setImageTagUrl:'wifi'.
]

{ #category : #icons }
SBSImageIcon >> wifi1 [
	self setImageTagUrl:'wifi-1'.
]

{ #category : #icons }
SBSImageIcon >> wifi2 [
	self setImageTagUrl:'wifi-2'.
]

{ #category : #icons }
SBSImageIcon >> wifiOff [
	self setImageTagUrl:'wifi-off'.
]

{ #category : #icons }
SBSImageIcon >> window [
	self setImageTagUrl:'window'.
]

{ #category : #icons }
SBSImageIcon >> wrench [
	self setImageTagUrl:'wrench'.
]

{ #category : #icons }
SBSImageIcon >> x [
	self setImageTagUrl:'x'.
]

{ #category : #icons }
SBSImageIcon >> xCircle [
	self setImageTagUrl:'x-circle'.
]

{ #category : #icons }
SBSImageIcon >> xCircleFill [
	self setImageTagUrl:'x-circle-fill'.
]

{ #category : #icons }
SBSImageIcon >> xDiamond [
	self setImageTagUrl:'x-diamond'.
]

{ #category : #icons }
SBSImageIcon >> xDiamondFill [
	self setImageTagUrl:'x-diamond-fill'.
]

{ #category : #icons }
SBSImageIcon >> xOctagon [
	self setImageTagUrl:'x-octagon'.
]

{ #category : #icons }
SBSImageIcon >> xOctagonFill [
	self setImageTagUrl:'x-octagon-fill'.
]

{ #category : #icons }
SBSImageIcon >> xSquare [
	self setImageTagUrl:'x-square'.
]

{ #category : #icons }
SBSImageIcon >> xSquareFill [
	self setImageTagUrl:'x-square-fill'.
]

{ #category : #icons }
SBSImageIcon >> zoomIn [
	self setImageTagUrl:'zoom-in'.
]

{ #category : #icons }
SBSImageIcon >> zoomOut [
	self setImageTagUrl:'zoom-out'.
]
