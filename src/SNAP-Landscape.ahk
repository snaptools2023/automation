;
; Snap Automation - https://github.com/snaptools2023/automation
;
; This script was built with a 1440x2560 resolution.  It uses th ahk APIs to create a ratio to translate the values in this script to fit your resolution.
;
; Example:  If you are running a resolution of 1920 horizontal resolution, the math to convert from 2560 to 1920 is: 2560 to 1920 = 1920 ÷ 2560 = 0.75.  The ratio is .75.  If this script moves the mouse to location 100, the script does the math to multiply 100 * the ratio of .75 to move your mouse to position 75.
;
; This script expects to run Marvel Snap full screen in landscape mode.
;
; This script was tested on AHK 2.0.13
;

BaseX := 2560
BaseY := 1440

RatioX := 0
RatioY := 0

CalculateScreenCoords()

GeneralDelayMs := 500
StepDelayMs := 100

; alt-e to end game/next.  "End/nExt"
!E::
{
	Click(FromLeft(2330), FromTop(1330))
	Return
}

; alt-a to play.  "plAy"
!A::
{
	Click(FromLeft(1280), FromTop(1230))
	Return
}

; alt-s to concede/retreat.  Stop playing
!S::
{
	Click(FromLeft(200), FromTop(1330))
	Sleep(GeneralDelayMs)
	Click(FromLeft(1125), FromTop(1064))
	Return
}

; alt-q to mute.  "Quiet"
!Q::
{
	Click(FromLeft(2440), FromTop(160))
	Sleep(GeneralDelayMs)
	Click(FromLeft(2210), FromTop(370))
	Sleep(StepDelayMs)
	Click(FromLeft(2440), FromTop(160))
	Sleep(StepDelayMs)
	Return
}

;
; functions
;

FromLeft(x)
{
	return x * RatioX
}

FromTop(y)
{
	return y * RatioY
}

CalculateScreenCoords()
{
	_N := 0
	_L := 0
	_T := 0
	Global ScreenWidth := 0
	Global ScreenHeight := 0
	MonitorGetWorkArea(_N, &_L, &_T, &ScreenWidth, &ScreenHeight)

	;
	; x calculations
	;
	Global RatioX

	; only calculate if the ratio is 0.  Otherwise, use the hard coded value.
	if (RatioX = 0)
	{
		RatioX := Ceil(ScreenWidth / BaseX)
	}
	
	;
	; y calculations
	;
	global RatioY

	; only calculate if the ratio is 0.  Otherwise, use the hard coded value.
	if (RatioY = 0)
	{
		RatioY := Ceil(ScreenHeight / BaseY)
	}
}
