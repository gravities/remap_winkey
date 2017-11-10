#Persistent
	SetTimer, OnTimer, 60000
	Return

OnTimer:
	If A_TimeIdlePhysical > 1000
		{
			MouseMove 0, 1, 0, R
			MouseMove 0, -1, 0, R
		}
	Return

LWin::LCtrl
Capslock::Ctrl
sc03a::Ctrl
WheelUp::WheelDown
WheelDown::WheelUp

#Include IME.ahk

sc029::
	IME_SET(0)
	Return

vkF2sc070::
	IME_SET(1)
	Return