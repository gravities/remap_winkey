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

<!Up::
	KeyWait, Up
	if (A_PriorHotkey == A_ThisHotkey) && (400 > A_TimeSincePriorHotkey)
	send, #{Tab}
	return

<!Right::
	KeyWait, Right
	if (A_PriorHotkey == A_ThisHotkey) && (400 > A_TimeSincePriorHotkey)
	send, #^{Right}
	Return

<!Left::
	KeyWait, Left
	if (A_PriorHotkey == A_ThisHotkey) && (400 > A_TimeSincePriorHotkey)
	send, #^{Left}
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

sc070::
	IME_SET(1)
	Return